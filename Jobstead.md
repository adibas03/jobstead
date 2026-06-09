# Jobstead

_The community-grown job-search playbook you own and carry: hard-won lessons and tailoring strategy in one portable markdown file, AI-ready for any chat._

**File version:** 3.4 · **Schema:** v2.2 · **Last synced:** 2026-06-09

Jobstead is a portable, mergeable context for an AI-assisted job search. Paste it into a new chat to bootstrap, share it between users running the same playbook, merge it with other copies without losing information.

> **Upload-size note:** If your environment can't accept the full file, you may omit **Section 2 (LESSONS)** when pasting — the Playbook (§1) operates standalone. Backlinks from rules to lesson dates may reference missing entries; Claude will note this and continue.

---

## Attribution

### Creators (immutable)

This list must not be modified, reordered, or removed in any merge.

- **adibas03**
- **Claude (Anthropic)**

### Contributors (append-only)

Users who have made substantive changes to the Playbook artifact (§1, §2, Protocol, Attribution structure, or how the playbook maintains its sections). **Routine use** with one's own Applicant Profile / Tracker is **not** a contribution.

**Uniqueness:** Creators ∪ Contributors must be unique by username; no overlap with Creators. **Identification:** username only (no real names). Before adding any contributor for the first time, Claude must explicitly ask for the preferred username — never infer from chat context, emails, or signed messages. Format: `username`.

**On add, if the proposed username already exists** in Creators ∪ Contributors, do not silently accept it. Ask whether this is the **same person returning** — recognize them and add nothing — or a **distinct person** who happens to want the same handle — recommend a suffixed variant (e.g. `username-2`) and confirm before adding. This good-faith check assumes cooperating participants; it is not a defence against impersonation, which is handled by the hosting platform's review and access controls, not by this file.

_(empty)_

### Changelog (append-only)

Records every change to the Playbook artifact itself. **Not** for session activity (those go in §5 Sync Log). Every entry requires an initiator (username from Creators or Contributors). Format: `[YYYY-MM-DD] vX.Y — initiator: username — Summary.`

**Classification:** a change that alters Claude's behavior counts as a Protocol change even when the edited text lives outside §0, since behavior determines the Protocol's effect. Schema changes are tracked separately in the `Schema:` header field.

**Schema vs Protocol/Behavioral.** Schema = the file's structural contract: section layout, fields, merge keys, operation types, data formats. Bump only when that contract changes (add/remove section, change merge keys, add operation type, restructure Attribution or §1/§2). Everything else — new rules, refined wording, renames, lesson operations — is Behavioral/Protocol; bump file version only. **Rule of thumb:** would old and new parse each other losslessly? Yes → file version. No → schema bump.

- `[2026-06-02] v1.0 — initiator: adibas03 — Initial Playbook context file created. Schema v1: Protocol, Playbook, Lessons, Profile, Tracker, Sync Log.`
- `[2026-06-02] v1.1 — initiator: adibas03 — Application Tracker reclassified as per-conversation state; template emptied; merge rules updated.`
- `[2026-06-02] v1.2 — initiator: adibas03 — Tracker merge brought in line with Playbook: older entries never lost to empty cells; conflicts surfaced to user.`
- `[2026-06-02] v1.3 — initiator: adibas03 — Applicant Profile merge aligned with Playbook/Tracker. "Older information is never lost passively" uniform across surfaces.`
- `[2026-06-02] v1.4 — initiator: adibas03 — Applicant Profile reclassified as per-applicant state; template fully blank; "Owner of this copy" removed; file fully generic.`
- `[2026-06-02] v1.5 — initiator: adibas03 — Attribution block added: immutable Creators, append-only Contributors with consent-only addition.`
- `[2026-06-02] v1.6 — initiator: adibas03 — Username-only identification for human creators/contributors. Claude must explicitly ask for username before adding any first-time Contributor.`
- `[2026-06-02] v1.7 — initiator: adibas03 — Terminology scoped: "user" = operator (Attribution only); "applicant" = subject (Playbook, Profile, Lessons). Industry terms unchanged.`
- `[2026-06-02] v1.8 — initiator: adibas03 — Creators/Contributors trimmed to identity only. Changelog sub-block added inside Attribution. Schema history migrated from Sync Log to Changelog.`
- `[2026-06-02] v1.9 — initiator: adibas03 — Attributor uniqueness rule: Creators ∩ Contributors = ∅. Initiator lookup procedure documented; merge conflicts resolved in favour of Creators.`
- `[2026-06-02] v2.0 — initiator: adibas03 — Playbook–Lessons restructured. §1 distilled rules backlink to origin lessons; §2 anonymous persistent observations. Operations defined: capture lesson (anonymous, no Changelog); promote, refute, deprecate (Changelog events). §2 reclassified as portable Playbook (persistent across conversations).`
- `[2026-06-02] v2.1 — initiator: adibas03 — File renamed to "Assisted Job Search". §1 header simplified to "PLAYBOOK". "How to Start a New Conversation" section added.`
- `[2026-06-02] v2.2 — initiator: adibas03 — File condensed: verbose prose tightened, redundant explanations removed, all rules/lessons/changelog entries preserved verbatim. Upload-size note added: §2 may be omitted when uploading to size-constrained environments.`
- `[2026-06-02] v2.3 — initiator: adibas03 — §2 curated for time-robustness ahead of open-sourcing. Situational PO/PM title-gap lesson (2026-05-24) dropped; orphaned origin-lesson backlink cut from §1.1.4. UK salary figures and Singapore body names converted to as-of-dated, verify-first form. Company name removed from 48-hour lesson; "Jobscan" generalized to "ATS-scoring tools." Contributors uniqueness rule extended: add-time collision asks same-person-returning vs distinct-person, recommends suffix for the latter; impersonation explicitly out of scope (handled by hosting platform). Behavioral/Protocol change (no schema change).`
- `[2026-06-02] v2.4 — initiator: adibas03 — Changelog classification convention added: a change altering Claude's behavior counts as a Protocol change even when edited text lives outside §0, since behavior determines Protocol effect. Self-applying — this entry is itself such a change. Behavioral/Protocol change (no schema change).`
- `[2026-06-03] v3.0 — initiator: adibas03 — Project renamed from "Assisted Job Search" to "Jobstead". H1 retitled; community-grown tagline subtitle added; filename → Jobstead.md; self-references and copyright line updated to "The Jobstead contributors". Prior name preserved in v2.1 history. Identity/Protocol change (no schema change).`
- `[2026-06-03] v3.0 — initiator: adibas03 — First-time onboarding behavior added (§0 Behavior 7): on Profile empty→populated, before first task, explain the persistence loop; once-only, skipped for returning users. Behavioral/Protocol change (no schema change).`
- `[2026-06-03] v3.0 — initiator: adibas03 — Split-default persistence clarified (§0 end-of-session): knowledge (§1, §2) accrues by default; PII (§3–§5) persists only on explicit user request. Lesson capture auto-accrues (no Changelog); promotion remains deliberate and attributed. Behavioral/Protocol change (no schema change).`
- `[2026-06-03] v3.0 — initiator: adibas03 — §2 PII-free rule added: lesson content must carry no personal information (patterns, not cases); Claude strips identifiers on capture. Distinct from authorship anonymity. Behavioral/Protocol change (no schema change).`
- `[2026-06-03] v3.0 — initiator: adibas03 — Work-authorization sourcing added (§1.1.1): establish applicant auth from Profile, ask only if unavailable, then compare to role. Profile-first, no re-asking. Behavioral/Protocol change (no schema change).`
- `[2026-06-03] v3.1 — initiator: adibas03 — Generalized to a Profile-wide principle (§0 Behavior 4): Profile fields are authoritative but not frozen; when the conversation signals a field may be stale, ask and offer to update, never overwriting silently. Trigger left open to conversational judgment rather than enumerated. §1.1.1 work-auth rule trimmed to inherit this. Behavioral/Protocol change (no schema change).`
- `[2026-06-03] v3.2 — initiator: adibas03 — §0 Behavior gains a section description distinguishing behaviors (govern specific file content, bind as written) from principles (open-ended concepts applied with judgment), with a content-vs-concept rule of thumb and a "most likely / surface at the margin" hedge. Behavioral/Protocol change (no schema change).`
- `[2026-06-03] v3.2 — initiator: adibas03 — General principle added (§0 Behavior 8): information may be outdated; on conversational signal, surface and investigate or ask rather than suppress; never licenses editing the append-only record. Behavioral/Protocol change (no schema change).`
- `[2026-06-03] v3.2 — initiator: adibas03 — Hold-for-confirmation added (§0 Behavior 9): Changelog/version-generating changes are proposed and held until the user confirms; Claude does not mint versions or Changelog entries on its own initiative; batch under one version; lesson capture exempt. Behavioral/Protocol change (no schema change).`
- `[2026-06-03] v3.2 — initiator: adibas03 — Refute and deprecate now require a reason (Operations table); Claude asks if none given. Deprecate format gains a reason slot (\`[DEPRECATED YYYY-MM-DD: reason]`); status-suffix lines note the refute reason is required. Behavioral/Protocol change (no schema change).`
- `[2026-06-03] v3.2 — initiator: adibas03 — Reinstatement-by-analysis added (after Operations table): refuted lessons / deprecated rules are not reversed; on resurfacing, Claude investigates the original reason against current circumstances, surfaces analysis, and routes genuine change into a new dated lesson. No new status, no merge change. Behavioral/Protocol change (no schema change).`
- `[2026-06-03] v3.2 — initiator: adibas03 — §3 Profile explicit-override: older field values are never lost silently but may be replaced on explicit applicant request; merge rule honors explicit replacement. Scope is Profile only; §4 Tracker and §5 Sync Log remain append-only. Behavioral/Protocol change (no schema change).`
- `[2026-06-09] v3.3 — initiator: adibas03 — Two changes batched. (1) §1.5 refined: §1.2 ATS-optimization defaults explicitly subordinate to the 48-hour window; ship the strongest version that fits the window, not the strongest possible version. Resolves implicit tension between §1.2 and §1.5. (2) §0 Behavior/Principle 10 added: transient artifacts (scratch drafts, intermediate outputs, superseded working files) are cleared once clearly superseded; extends to artifacts for applications whose purpose has clearly ended, only with applicant's explicit confirmation; strictly fenced from append-only records; ambiguous cases default to part-of-record and surface; principle, not behavior. (A §2 lesson was also captured anonymously in this session as a diminishing-return corollary to the 2026-05-27 ATS-tools lesson — noted here for traceability, not as a versioned change.) Behavioral/Protocol change (no schema change).`
- `[2026-06-09] v3.4 — initiator: adibas03 — Two changes batched. (1) §0 Behavior/Principle 11 added: when meaningful unsaved state has accumulated in a session (Tracker, Profile, Sync Log entries, or held proposals under Behavior 9), Claude offers an updated copy. Judgment-based threshold, not lifecycle-triggered, to protect against session loss (crashes, context exhaustion, forgetting). Auto-accrued lessons don't trigger it on their own; suppressed after a recent output. Distinct from Behavior 10 (transient artifacts cleared) — Behavior 10 governs clearing superseded scratch work; Behavior 11 governs preventing loss of unsaved record state. (2) Schema definition added to Attribution Classification block: Schema = the file's structural contract; bump only when section layout, merge keys, operation types, or data formats change. Behavioral/Protocol changes work within existing structure and bump only the file version. Rule of thumb provided. Formalizes the convention used since v2.4. Behavioral/Protocol change (no schema change).`

---

## 0. PROTOCOL

### Behavior

**About this section.** It holds two kinds of item. **Behaviors** govern specific file content — a named section, list, or record (e.g. Creators immutable; §2 append-only). Because they bind the content the file's guarantees rest on, they apply exactly as written, never reinterpreted or extended. **Principles** are open-ended concepts applied with judgment (e.g. treat stored information as possibly stale); where a situation isn't directly addressed, reason from the principle's intent, apply it, and articulate the extension to the user. Rule of thumb: an item tied to specific named content is most likely a behavior, binding as written; an open-ended concept is most likely a principle. At the margin judgment decides — and when which kind it is genuinely matters, surface the question rather than assume.

1. **Attribution** is the artifact's identity record. Creators immutable; Contributors append-only; Changelog append-only, every entry attributed.
2. **§1 Playbook** = inherited operating defaults. Apply by default; don't ask the user to re-teach them. Rules derive from §2 lessons; most backlink.
3. **§2 Lessons** = persistent anonymous community knowledge. Append-only, never deleted, survive across users and conversations. Stand until explicitly refuted. No author attribution. Status suffix optional, but where a `[REFUTED]` suffix is applied its reason is required: `(no suffix)` = raw · `[VALIDATED]` · `[PROMOTED vX.Y]` · `[REFUTED YYYY-MM-DD: reason]`.
4. **§3 Applicant Profile** = authoritative for the current applicant, but not frozen. Run §1.1 fit-check against it. Older field values are never lost passively or silently, but may be replaced when the applicant explicitly requests it. Treat Profile fields as current unless the conversation suggests otherwise — if anything indicates a field may be stale (e.g. repeated actions inconsistent with a stored value, or the applicant mentioning a change), ask whether it has changed and offer to update it. Never overwrite silently.
5. **§4 Application Tracker** = per-conversation state. Append as applications happen. Older entries never lost to empty cells on merge.
6. **§5 Sync Log** = session-activity audit. Append, never delete. **Not** for Playbook artifact changes — those go in the Changelog.
7. **First-time onboarding.** When the Applicant Profile transitions from empty to populated within a conversation (a first-time setup), then before proceeding to the user's first task, briefly explain the persistence loop: state lives in this file; knowledge accrues automatically, but personal information is saved only when asked; at session end, ask Claude to output the updated file and paste it into a new conversation to resume. Once only — if the Profile arrives already populated (a returning user), skip this.
8. **Information may be outdated** _(principle)_. Treat stored values, lessons, and rules as accurate-as-of-their-date, not permanently current. When the conversation signals a stored item may no longer hold, surface it and investigate or ask as appropriate to that item — never silently suppress, ignore, or act on possibly-stale information without flagging it. This never licenses editing or removing the historical record (append-only stands); it routes genuine change into the correct forward action (update a field, capture a new lesson) and always surfaces rather than deciding silently.
9. **Hold for confirmation.** Changes that generate a Changelog entry or bump the file version (promote, refute, deprecate, add-rule, rename, Protocol edits) are proposed and held until the user explicitly confirms; Claude does not mint a version or write a Changelog entry on its own initiative. Batch related changes under one version where possible. Lesson capture (§2) is exempt — it remains anonymous, unversioned, and auto-accruing.
10. **Transient artifacts are cleared once superseded** _(principle)_. Working products generated in the course of a task — scratch drafts, intermediate outputs, superseded versions of something being iterated on — should not accumulate indefinitely; once they're clearly superseded, clear them rather than letting stale copies linger and cause confusion. This also extends to artifacts created for specific applications whose purpose has clearly ended (rejected, expired before submission, or any other clearly closed state): they may be cleared too, but always with the applicant's explicit confirmation — never automatically. This is strictly fenced from the file's persistent records: the append-only records (Attribution, Changelog, §2 Lessons, §4 Tracker, §5 Sync Log) and the historical record generally are never subject to this — they are governed by their own never-delete rules, which always win. The principle applies only to transient working material, never to anything the file is built to retain; where it's unclear whether something is transient or part of the record, treat it as part of the record and surface the question.
11. **Remind the user to retrieve their updated copy** _(principle)_. When meaningful unsaved state has accumulated — Tracker, Profile, Sync Log entries, or held proposals under Behavior 9 — offer the user a chance to request an updated copy. Judgment-based threshold, not lifecycle-triggered. Auto-accrued lessons don't trigger this on their own. Suppress after a recent output.

### Operations on §1 and §2

| Operation                     | Effect                                                                                                                                                     | Attribution           | Changelog? |
| ----------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------- | ---------- |
| Capture lesson                | Append dated observation to §2, status `raw`                                                                                                               | Anonymous             | No         |
| Validate lesson               | Update §2 lesson's status to `[VALIDATED]`                                                                                                                 | Anonymous             | No         |
| Promote lesson → rule         | Add rule to §1 with backlink; update lesson status to `[PROMOTED vX.Y]`                                                                                    | Promoter (username)   | Yes        |
| Refute lesson                 | Update lesson status to `[REFUTED YYYY-MM-DD: reason]`. A reason is required; if the user doesn't provide one, ask before refuting.                        | Refuter (username)    | Yes        |
| Deprecate rule                | Mark rule `[DEPRECATED YYYY-MM-DD: reason]` in §1; origin lesson UNCHANGED. A reason is required; if the user doesn't provide one, ask before deprecating. | Deprecator (username) | Yes        |
| Add rule directly (no lesson) | Allowed but discouraged; prefer capture-then-promote. Use for industry-fact rules with external sources.                                                   | Initiator (username)  | Yes        |

**Initiator lookup:** (a) check Creators — if found, use that username and do not duplicate; (b) check Contributors — if found, use that username; (c) if neither, ask the user for preferred username and, with consent, add to Contributors. Then attribute.

**Reinstatement (by analysis).** A refuted lesson or deprecated rule stays in the record (append-only) — it is not reversed. But its judgment is not frozen: when such an item resurfaces and the conversation suggests its refutation/deprecation reason may no longer hold, Claude _investigates_ — examining the original reason against current circumstances and, where useful, checking external facts — then surfaces its analysis to the user (distinct from a Profile field, where Claude simply asks the user). If circumstances have genuinely changed, capture a _new dated lesson_ reflecting current reality rather than un-setting the old marker. No status is reversed; the history reads as a sequence of dated judgments.

### Merge rules

When the user pastes a second copy, apply these:

- **Creators (immutable).** Must be byte-identical to the canonical list. If modified or missing in a pasted file, **flag as tampering and refuse to merge** until restored.
- **Contributors (append-only).** Union of usernames, deduplicated. Enforce uniqueness against Creators: duplicates flagged and removed from Contributors (Creators always wins).
- **Changelog (append-only).** Union of entries, deduplicated by `(date, version, initiator, summary)`. Every entry must have an initiator; if missing, ask before accepting. Conflicting summaries for same version → flag.
- **§1 Playbook (append-only).** Union of rules. Older rules are never stale; only `[DEPRECATED]` markers retire (deprecated rules stay as history). Contradictions between rules → flag and ask. Verify lesson backlinks resolve.
- **§2 Lessons (append-only, persistent).** Union keyed by `(date, text)`. Status updates by latest state; `[REFUTED]` always wins. Never delete. Status conflicts → flag.
- **§3 Applicant Profile (per-applicant).** Never merge across different people — if file's profile differs from user's stated identity, ask which is current. For same applicant: older field values never lost to empty/missing or overwritten silently; conflicts surfaced, not silently resolved; explicit replacement by the applicant is honored.
- **§4 Application Tracker (per-conversation).** Older entries never lost to empty cells. For same applicant across conversations: merge by `company + role`; status conflicts → ask. Across different applicants: do not merge.
- **§5 Sync Log (per-conversation).** Older entries never lost to empty entries. Union by `(date, summary)`. Playbook artifact changes do **not** belong here.

### Updating this file at end of session

Knowledge (§1 Playbook, §2 Lessons) accrues by default — lessons captured during the session stay in the file without being asked. **PII (§3 Profile, §4 Tracker, §5 Sync Log) persists only when the user explicitly asks Claude to record their information** (e.g. "update the Jobstead with my information"). When asked to output the file, produce a fresh copy with: updated `Last synced` date · Sync Log entries appended · Tracker updated · Profile updates if any · new lessons captured · Changelog entries for any artifact changes.

Note on operation classes: capturing a lesson into §2 is anonymous and generates no Changelog entry; promoting a lesson to a §1 rule is a deliberate, attributed action that does generate a Changelog entry (see Operations table). Auto-accrual covers lesson capture, not promotion.

---

## 1. PLAYBOOK

Distilled operating defaults derived from accumulated lessons (§2). Append-only — may be deprecated, never deleted. Most rules backlink to one or more origin lessons; a few (industry-fact rules with external sources) may be added directly. PII-free; applies to any applicant.

### 1.1 Upfront fit check (run BEFORE tailoring)

Evaluate in order. Skip the role if any **hard filter** fails without a real workaround:

1. **Work authorization** _[Hard]_ — Does the role need work rights the applicant lacks, AND is the company unwilling/unable to sponsor? Establish the applicant's authorization from the Profile (`Citizenship` / `Work authorization status`); only if unavailable there, ask the applicant. Then compare against the role's requirement. (Profile values are authoritative but not frozen — see §0 Behavior 4 on re-confirming when the conversation suggests they're stale.) Signals: "Remote [single country]" or "Must have right to work in X"; explicit sponsorship statements; sector (defence/intelligence/government → almost always citizen-only); application-form sponsorship questions asked early are usually filters.
2. **Language** _[Hard]_ — Especially European public-sector or local-market roles. C1+ in a language the applicant doesn't have is a wall.
3. **Hard credentials** _[Hard]_ — Master's/PhD as "required," government security clearances, professional licenses. Public research institutes and government roles enforce strictly.
4. **Title fit** _[Soft]_ — Has the applicant _held_ the title before, or only equivalent work? Title gaps are screen-stage rejection risks.
5. **Stack/skill match** _[Soft]_ — Production experience in the core technologies, or only adjacent ones?
6. **Seniority band** _[Soft]_ — Under-credentialed, well-matched, or significantly over-leveled? Both extremes hurt at the screen stage.
7. **Domain alignment** _[Soft]_ — Industry/values fit. Flag when role conflicts with stated thesis or values.

**Decision rule:** Any hard filter fails with no workaround → recommend skip. Only soft filters fail → present honestly and let the applicant decide.

### 1.2 ATS (Applicant Tracking System) optimization defaults

- **Mirror the exact JD job title** verbatim in headline, subtitle, or summary. Title-match scoring is significant.
- **Both stack-name spellings** where variants exist — "Next.js / NextJS," "Node.js / NodeJS," "React Native / ReactNative." ATS treats variants as separate tokens.
- **Literal JD keyword phrases** even when equivalent. "AWS services" + "AWS (ECS, Lambda)"; "DevOps" + "CI/CD".
- **5+ quantified achievements** across the resume (numbers, %, $, user/transaction counts).
- **Standard section headers only** — Summary, Experience, Skills, Education. No creative names.
- **No tables, columns, text boxes, headers/footers, or graphics.** Single-column flow.
- **Standard fonts** — Calibri, Arial, Helvetica, Georgia.
- **Month-Year dates** (e.g., "November 2019 – December 2025"), not year-only.
- **Page count:** 2 max for senior leaders, 1 for early-career.
- **Contact info in body text**, not in a header/footer.
- **File format:** .docx generally parses more reliably than PDF. Submit .docx where the form accepts; PDF as fallback.
- **Education degree mismatch** (non-CS for CS roles) is often a fixed filter with no honest workaround. Accept as known miss; don't fake.

### 1.3 Tailoring strategy

1. **Read the JD carefully.** Identify (a) literal title, (b) 5–10 most repeated keywords, (c) "must have" vs "nice to have", (d) company tone/voice.
2. **Reposition the headline** to match the role family (EM vs. Staff IC vs. PO, etc.). Don't reuse one headline for all roles.
3. **Reorder skills sections** to put the JD's primary keywords first.
4. **Rewrite flagship-role bullets** to lead with the JD's language — same achievements, different framing.
5. **Trim or cut sections** unrelated to the role (e.g., blockchain content for non-Web3).
6. **Address gaps honestly** in the cover letter. Acknowledging weakness with a ramp plan reads as confidence; hiding it reads as risk.
7. **Match the company's voice.** Casual postings → casual cover letter; formal → formal.

### 1.4 Cover letter standards

- One page maximum.
- Open with the strongest hook — usually a specific JD line that genuinely resonates with the applicant's background.
- Address known concerns up front — location, sponsorship, title gap, stack gap. Burying creates surprise; surfacing shows self-awareness.
- Specifics over generics — name actual products, named recruiters, specific stack components from the JD.
- End with a concrete next step (technical test, paid trial, specific problem discussion).

### 1.5 Submission speed

**48-hour rule:** Strong-fit roles → submit tailored materials within 48 hours of identification. Strong-fit roles close fast; perfect-but-too-late is a real failure mode. The §1.2 ATS-optimization defaults still apply, but should not delay submission past this window — ship the strongest version that fits the window, not the strongest possible version. _Origin lesson: §2 2026-05-28._

### 1.6 Source quality observations

- **Aggregators filtered by "visa sponsorship" (SimplyHired, Indeed)** attract scams and body-shop postings. Avoid.
- **Real sponsors don't advertise sponsorship as a "benefit."** They just list the role.
- **Higher-quality sources:** direct company careers pages (especially verified sponsors); Y Combinator Work at a Startup; Wellfound; Otta; RemoteOK with "worldwide" filter; Remotive; We Work Remotely; UK official sponsor licence register CSV.
- **Aggregator boards (Arbeitnow, Greenhouse listings)** for European tech are mixed-quality but contain real opportunities. Apply fit-check rigorously.
- **Government/public-sector portals** (Singapore careers@gov, France Travail, EU EURES) mostly citizen-only at IT-specialist level. Check only for bodies known to hire foreigners (e.g., Singapore GovTech).

### 1.7 Scam markers — skip immediately

A posting with two or more of these is high-risk:

- Salary below the country's visa-sponsorship minimum, yet "visa sponsorship" offered as a benefit
- Keyword-stuffed qualifications list (30+ technologies, mutually exclusive stacks)
- Generic AI-written description with no concrete product, team, mission, or client
- "Private Limited" / equivalent shell-company suffix, no Companies House / corporate registry footprint
- No real website, or generic template (Zyro, Wix-default) with stock photos
- Two addresses that don't match (registered office vs. listed office)
- No sponsor licence number when role offers sponsorship
- Asks for passport, ID, bank details, or "processing fees" before formal offer
- Listing aggregated to multiple boards without a real company careers page

If present, **verify on the country's official sponsor register** before any further engagement.

### 1.8 Honest framing principles

- **Don't fake credentials** — degrees, certifications, citizenship.
- **Don't overclaim depth** — sparse experience flagged "familiar with" or omitted, not listed as a strength.
- **Don't hide structural blockers** — location, work auth, title gap. They surface in screen calls; surface them in the cover letter instead.
- **Don't lead with the weakest area.** Play to strengths; don't stretch to fill every keyword.

---

## 2. LESSONS

Anonymous, dated observations. Capturable by anyone; no username recorded; no Changelog entry. Append-only, persistent across conversations and users. Stand until explicitly refuted (a Changelog event).

**PII-free.** Lesson _content_ must contain no personal information — no applicant names, no employer/role identifiers tied to an individual, no contact details. Lessons capture portable _patterns_, not individual _cases_. On capture, Claude strips identifying specifics. This is distinct from the anonymity of authorship above: even with no author recorded, the text itself must carry no PII, because lessons are shared across users and merged between copies, where any personal detail would propagate permanently.

Status suffix (optional, but a `[REFUTED]` suffix's reason is required): `(none)` = raw · `[VALIDATED]` · `[PROMOTED vX.Y]` · `[REFUTED YYYY-MM-DD: reason]`. A promoted lesson keeps its `[PROMOTED]` status even if the derived rule is later deprecated — lessons are raw history.

Format: `[YYYY-MM-DD] Lesson statement. [STATUS-IF-ANY]`

- `[2026-05-26]` "Remote [single country]" in a job ad nearly always means "must be authorized to work in that country." Treat as a hard filter unless sponsorship is explicitly mentioned. `[PROMOTED v1.0]`
- `[2026-05-26]` UK Skilled Worker visa carries a minimum salary floor that scales by role and updates periodically; software engineer "going rate" thresholds sit well above the general floor. **As of 2026-05: ~£38,700 general, ~£52,700 SWE going-rate — verify current figures on gov.uk before relying on them.** Any UK role offering "visa sponsorship" with salary far below the general floor is structurally impossible — either a misunderstanding or a scam. `[PROMOTED v1.0]`
- `[2026-05-26]` Singapore Public Service roles (statutory boards, ministries) are citizen/PR-first; defence/security/intelligence bodies are citizen-only. GovTech is the principal exception — it can hire foreigners for specialist tech roles, but the Employment Pass justification bar is high. **Specific body names and policies shift; treat as a pattern (public-sector = local-first, defence = citizen-only) and verify the current exception list rather than the named bodies.** `[PROMOTED v1.0]`
- `[2026-05-27]` ATS-scoring tools (e.g. Jobscan) paywall full results but expose enough free signal to act on: missing keywords, structural flags, exact-title-match issues. The missing-keywords list is the most useful free output. `[PROMOTED v1.0]`
- `[2026-05-28]` Honest gap-acknowledgment in a cover letter (e.g., "I don't read Ruby yet; here's my ramp plan") reads as confidence, not weakness. Observed across three real-fit applications; none auto-rejected on it. `[PROMOTED v1.0]`
- `[2026-05-28]` 48-hour submission rule: a strong-fit role expired during an additional-polish window. Submit tailored materials fast on strong-fit roles. `[PROMOTED v1.0]`
- `[2026-06-09]` ATS-scoring tools' paywalled full reports typically offer diminishing return on a per-application basis — the free-tier missing-keywords list and structural flags capture the actionable subset. Useful corollary to the 2026-05-27 lesson: don't pay per scan unless you're optimizing across many applications.

---

## 3. APPLICANT PROFILE

> Per-applicant state, not portable. Each user owns their profile; shared template is blank. If empty at start of conversation, Claude populates by asking the user or parsing a resume.
>
> **Required:** identity (name, location, citizenship/work-auth, contact); career summary; technical stack with honest depth labels (production-fluent / familiar / not held); education; languages (CEFR where relevant); target roles; geographic constraints; master resume reference.
>
> **Optional:** public presence; specialized depth; salary expectations; long-term projects; values / red flags.

### Identity

- **Name:** _(empty)_
- **Location:** _(empty)_
- **Citizenship:** _(empty)_
- **Work authorization status:** _(empty)_
- **Email:** _(empty)_
- **Phone:** _(empty)_

### Public presence

- _(empty)_

### Career summary

_(empty)_

### Technical stack

- **Cloud:** _(empty)_
- **Languages (production fluent):** _(empty)_
- **Languages (familiar, sparse production):** _(empty)_
- **Languages (not held):** _(empty)_
- **Frameworks:** _(empty)_
- **Data:** _(empty)_
- **DevOps / Architecture:** _(empty)_
- **AI tooling:** _(empty)_
- **Other specialized:** _(empty)_

### Product / UX experience

_(empty)_

### Education

_(empty)_

### Languages

_(empty)_

### Target roles and constraints

- **Open to:** _(empty)_
- **Industry preference:** _(empty)_
- **Geography:** _(empty)_
- **Work authorization status:** _(empty)_
- **Salary expectations:** _(empty)_

### Master resume

_(empty — provide filename or upload reference)_

### Long-term projects / deferred plans

_(empty)_

### Values / red flags

- **Mission-aligned:** _(empty)_
- **Caution / discuss before applying:** _(empty)_
- **Hard pass:** _(empty)_

---

## 4. APPLICATION TRACKER

> Per-conversation state, not portable. Owned by each conversation; shared template is blank. Status definitions: **Reviewed and skipped** — fit-check failed · **Deferred** — on roadmap (reapply later) · **Applied — awaiting response** · **Applied — in process** (recruiter call, technical test, interview) · **Applied — rejected** · **Applied — offered / accepted / declined** · **Expired before submission** (note reason).

### Applied — awaiting response

| Company   | Role | Date applied | Notes |
| --------- | ---- | ------------ | ----- |
| _(empty)_ |      |              |       |

### Applied — in process

| Company   | Role | Stage | Date | Notes |
| --------- | ---- | ----- | ---- | ----- |
| _(empty)_ |      |       |      |       |

### Applied — rejected

| Company   | Role | Date | Likely cause |
| --------- | ---- | ---- | ------------ |
| _(empty)_ |      |      |              |

### Applied — offered / accepted / declined

| Company   | Role | Outcome | Date | Notes |
| --------- | ---- | ------- | ---- | ----- |
| _(empty)_ |      |         |      |       |

### Deferred

| Company   | Role | Reason |
| --------- | ---- | ------ |
| _(empty)_ |      |        |

### Expired before submission

| Company   | Role | Reason |
| --------- | ---- | ------ |
| _(empty)_ |      |        |

### Reviewed and skipped

| Company   | Role | Reason |
| --------- | ---- | ------ |
| _(empty)_ |      |        |

---

## 5. SYNC LOG

> Per-conversation session-activity audit. Records applications, lessons captured, profile/tracker updates, ATS findings. **Not** for Playbook artifact changes — those go in the Changelog (Attribution). Format: `[YYYY-MM-DD] Summary.`

_(empty)_

---

## How to Start a New Conversation

### 1. Paste this file as your first message

Claude will acknowledge Attribution + Protocol, read the current Profile and Tracker (or note they're empty), and wait for your first instruction.

**File too large for upload?** Omit Section 2 (LESSONS) — the Playbook (§1) operates standalone. Backlinks may reference missing lesson dates; Claude will note this and continue.

### 2. Common first instructions

- **"Review this role: [URL or pasted JD]"** — runs the §1.1 fit-check against your Profile
- **"Build materials for this role"** — only after fit-check passes; tailors resume + cover letter
- **"Capture a lesson: [text]"** — anonymous, dated entry to §2
- **"Promote the lesson from [date] to a rule"** — moves to §1, attributed to you in the Changelog
- **"Refute the lesson from [date]: [reason]"** — marks the lesson refuted; you're the refuter in Changelog
- **"Deprecate the rule in §1.X about [topic]: [reason]"** — marks rule deprecated; origin lesson untouched
- **"Update my Profile: [change]"** · **"Update the Tracker: [Company] is now [status]"**

### 3. During the session

Provide one job at a time; fit-check before tailoring. Ask Claude to note submission dates in the Tracker. Capture observations as lessons to grow the artifact's knowledge.

### 4. End of session

Knowledge you've added (lessons) is already in the file. To save your personal state, tell Claude to record it — for example, _"update the Jobstead with my information"_ (or however you'd naturally say it). Claude outputs a fresh copy with Sync Log appended, Tracker and Profile updated, new lessons, and any Changelog entries. Save it and paste it into a new conversation to resume. Skip this and nothing personal carries over — you keep only the methodology.

### 5. Bringing knowledge from other conversations

Paste another copy with **"Please merge this with our current context."** Claude surfaces new rules, lessons, and conflicts for your confirmation. Nothing is overwritten silently.

### 6. Privacy

Playbook (§1–§2) and Attribution are PII-free and safe to share. Profile (§3), Tracker (§4), and Sync Log (§5) may contain PII — review before sharing outside your own workflow.

---

_End of file._
