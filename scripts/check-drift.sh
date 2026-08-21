#!/bin/sh
# check-drift.sh — detect drift between the Jobstead skill and the plain-chat playbook.
#
# Two kinds of check:
#   1. HARD (exit 1 on failure): the version tag pinned in SKILL.md's playbook link
#      must match the version declared in Jobstead.md's header.
#   2. ADVISORY (never fails the build): for each mapped (reference-file, playbook-section)
#      pair, report field-name bullets and headers present in one but not the other.
#      These are candidates for human review — the skill is a deliberate distillation,
#      so some asymmetry is intentional. The script cannot judge intent; you do.
#
# Portable: POSIX sh + awk only. No bashisms, no temp files, no sort/comm.
# Run from the repo root:  sh scripts/check-drift.sh
#
# ---------------------------------------------------------------------------
# MANIFEST — the explicit mapping. Edit here if files/sections are added.
#   Format per line: <reference-file-path>|<playbook-section-number>|<label>|<mode>
#   mode = "fields" : compare "- **Label:**" field slots + ## headers (structural template)
#   mode = "dates"  : compare [YYYY-MM-DD] date tokens (lesson presence; NOT lesson text —
#                     lesson wording/genericization divergence is a git-review concern, not the
#                     script's: the script checks that the same dated lessons are present.)
#   The section number matches the playbook's "## N. TITLE" headers in Jobstead.md.
# ---------------------------------------------------------------------------
MANIFEST='skills/jobstead/references/profile.md|3|Applicant Profile|fields
skills/jobstead/references/tracker.md|4|Application Tracker|fields
skills/jobstead/references/lessons.md|2|Lessons|dates
skills/jobstead/references/log.md|5|Sync Log|fields'

PLAYBOOK="Jobstead.md"
SKILL="skills/jobstead/SKILL.md"

# repo-root sanity check
if [ ! -f "$PLAYBOOK" ] || [ ! -f "$SKILL" ]; then
  echo "ERROR: run from the repo root (expected $PLAYBOOK and $SKILL)." >&2
  exit 2
fi

fail=0

# ---------------------------------------------------------------------------
# CHECK 1 (HARD): version tag in SKILL.md link  ==  version in Jobstead.md header
# ---------------------------------------------------------------------------
# Playbook version: the "File version:" field in the header (NOT the Schema field).
# Header form: **File version:** 3.6 · **Schema:** v2.3 · ...
# Normalize to a leading "v" so it compares against the vX.Y git tag.
playbook_ver=$(awk '
  /[Ff]ile version/ {
    if (match($0, /[Ff]ile version:\*\*[[:space:]]*v?[0-9]+\.[0-9]+/)) {
      s = substr($0, RSTART, RLENGTH)
      if (match(s, /[0-9]+\.[0-9]+/)) print "v" substr(s, RSTART, RLENGTH)
      exit
    }
  }' "$PLAYBOOK")

# Skill pinned tag: the refs/tags/vX.Y in the playbook link inside SKILL.md.
skill_tag=$(awk '
  /refs\/tags\/v[0-9]+\.[0-9]+/ {
    if (match($0, /refs\/tags\/v[0-9]+\.[0-9]+/)) {
      s = substr($0, RSTART, RLENGTH)
      sub(/refs\/tags\//, "", s)
      print s; exit
    }
  }' "$SKILL")

echo "== Version check =="
if [ -z "$playbook_ver" ]; then
  echo "  ERROR: could not find a version (vX.Y) in $PLAYBOOK header." >&2
  fail=1
elif [ -z "$skill_tag" ]; then
  echo "  ERROR: could not find a refs/tags/vX.Y link in $SKILL." >&2
  fail=1
elif [ "$playbook_ver" = "$skill_tag" ]; then
  echo "  OK: playbook $playbook_ver == skill link $skill_tag"
else
  echo "  DRIFT: playbook is $playbook_ver but SKILL.md link pins $skill_tag" >&2
  echo "         -> update the refs/tags link in $SKILL to $playbook_ver" >&2
  fail=1
fi
echo ""

# ---------------------------------------------------------------------------
# CHECK 2 (ADVISORY): field/header set-diff per manifest pair
# ---------------------------------------------------------------------------
# extract_tokens <file> <section_number|->  : prints normalized tokens, one per line.
#   token types:
#     F:<name>   a field bullet  "- **Name:** ..."   -> F:Name
#     H:<name>   a header         "## / ### Name"     -> H:Name
#   If section_number is given, only lines within "## N." .. next "## " are scanned
#   (used for the playbook). If "-", the whole file is scanned (used for ref files).
extract_tokens() {
  _file=$1; _sec=$2; _mode=$3
  awk -v sec="$_sec" -v mode="$_mode" '
    function emit_line(line,   name) {
      if (mode == "dates") {
        # emit each [YYYY-MM-DD] date token found on the line
        s = line
        while (match(s, /\[20[0-9][0-9]-[0-9][0-9]-[0-9][0-9]\]/)) {
          print "D:" substr(s, RSTART+1, RLENGTH-2)
          s = substr(s, RSTART+RLENGTH)
        }
        return
      }
      # field bullet: - **Field:**
      if (match(line, /^[[:space:]]*-[[:space:]]*\*\*[^*]+:\*\*/)) {
        name = line
        sub(/^[[:space:]]*-[[:space:]]*\*\*/, "", name)
        sub(/:\*\*.*$/, "", name)
        gsub(/^[[:space:]]+|[[:space:]]+$/, "", name)
        if (name != "") print "F:" name
        return
      }
      # header: ## or ### Title  (skip the top-level "## N. TITLE" section marker itself)
      # NB: avoid {2,3} interval regex — not enabled in default POSIX awk.
      if (match(line, /^###[[:space:]]+/) || match(line, /^##[[:space:]]+/)) {
        name = line
        sub(/^#+[[:space:]]+/, "", name)
        gsub(/^[[:space:]]+|[[:space:]]+$/, "", name)
        if (name != "") print "H:" name
      }
    }
    BEGIN { insec = (sec == "-") ? 1 : 0 }
    {
      if (sec != "-") {
        # section-bounded scan for the playbook
        if ($0 ~ ("^## " sec "\\.")) { insec = 1; next }   # enter section, skip its marker
        if (insec && $0 ~ /^## /) { insec = 0 }             # ANY next top-level ## ends it
      }
      if (insec) emit_line($0)
    }
  ' "$_file"
}

# diff_sets <fileA-tokens> <fileB-tokens> via awk associative arrays (no temp files):
# we pass both token streams into one awk by tagging their origin.
report_pair() {
  _ref=$1; _sec=$2; _label=$3; _mode=$4
  echo "== $_label  ($_ref  <->  playbook §$_sec) [$_mode] =="

  {
    extract_tokens "$_ref" "-" "$_mode"        | sed 's/^/A:/'
    extract_tokens "$PLAYBOOK" "$_sec" "$_mode" | sed 's/^/B:/'
  } | awk -v mode="$_mode" '
    { tag = substr($0,1,1); tok = substr($0,3)
      if (tag == "A") a[tok]=1; else b[tok]=1 }
    END {
      only_ref=0; only_pb=0
      for (t in a) if (!(t in b)) { only_ref=only_ref+1; ra[only_ref]=t }
      for (t in b) if (!(t in a)) { only_pb=only_pb+1; pb[only_pb]=t }
      unit = (mode=="dates") ? "dated lesson" : "field/header"
      if (only_ref==0 && only_pb==0) {
        print "  OK: " unit " sets match"
      } else {
        if (only_ref>0) {
          if (mode=="dates")
            print "  Dated lessons in skill but NOT in playbook (skill-only — intended, or stale?):"
          else
            print "  In reference file but NOT in playbook (skill-only — intended distillation, or stale?):"
          for (i=1;i<=only_ref;i++) print "    - " ra[i]
        }
        if (only_pb>0) {
          if (mode=="dates")
            print "  Dated lessons in playbook but NOT in skill (possible missed update):"
          else
            print "  In playbook but NOT in reference file (possible missed update):"
          for (i=1;i<=only_pb;i++) print "    - " pb[i]
        }
      }
    }
  '
  echo ""
}

echo "== Field/header set comparison (advisory) =="
echo "  (asymmetry may be deliberate — the skill distills the playbook. Review, don't auto-fix.)"
echo ""

# iterate the manifest
echo "$MANIFEST" | while IFS='|' read -r ref sec label mode; do
  [ -z "$ref" ] && continue
  [ -z "$mode" ] && mode="fields"
  if [ ! -f "$ref" ]; then
    echo "== $label =="
    echo "  WARN: reference file $ref not found; skipping." >&2
    echo ""
    continue
  fi
  report_pair "$ref" "$sec" "$label" "$mode"
done

# ---------------------------------------------------------------------------
# Exit status: only the HARD check affects it.
# ---------------------------------------------------------------------------
if [ "$fail" -ne 0 ]; then
  echo "RESULT: drift detected (hard check failed). See messages above." >&2
  exit 1
fi
echo "RESULT: hard checks passed. Review any advisory items above."
exit 0
