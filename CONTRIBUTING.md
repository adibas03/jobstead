# Contributing to Jobstead

Thanks for wanting to improve Jobstead. This guide explains how a change you propose becomes a properly recorded part of the file, and how the project's conventions map onto GitHub pull requests.

Read this alongside the [Attribution](./Jobstead.md#attribution) and [Protocol](./Jobstead.md#0-protocol) sections of `Jobstead.md` — they are the authoritative rules. This document is the GitHub-side translation, not a replacement.

## What counts as a contribution

A contribution is a substantive change to the **shared methodology**: the Playbook (§1), the Lessons (§2), the Protocol (§0), or the Attribution structure. Improving a rule, adding a portable lesson, fixing the merge logic — these are contributions.

Routine use of the file for your own job search — filling in your Profile, logging applications — is **not** a contribution, and that personal state should never appear in a pull request. Keep your own copy private; PRs touch only the methodology layer.

## Before you open a PR

- **Only the methodology layer.** Your PR should change §0, §1, §2, or the Attribution structure — never §3 (Profile), §4 (Tracker), or §5 (Sync Log), which ship blank and hold per-user state.
- **No personal data, especially in Lessons.** Lessons are PII-free by rule: patterns, not cases. Strip company names, person names, and any identifying specifics. A lesson that leaks a detail can't be cleanly removed later — §2 is append-only — so it has to be clean on the way in.
- **One logical change per PR.** A single rule, a single lesson, a single Protocol fix. This keeps the Changelog entry clean and the review focused.

## How the file's operations map to a PR

**These operations are already built into Jobstead.** You don't hand-construct the backlinks, status suffixes, or Changelog formatting — you ask your AI to perform the operation in-chat ("promote the lesson from [date]", "refute the lesson from [date]: [reason]"), and Jobstead produces the correctly-formatted file. Your PR is simply the resulting diff. The breakdown below is so you can *check* the AI did each part, not a manual you have to follow by hand.

The file defines a small set of operations (see the Operations table in [§0](./Jobstead.md#0-protocol)). Here's what each produces in the file, and how it becomes a PR:

- **Capture a lesson** (add to §2) — a dated, anonymous, PII-free observation added to the Lessons section. No Changelog entry, no attribution. The PR just adds the line.
- **Promote a lesson to a rule** (§2 → §1) — adds the rule to the Playbook with a backlink to the origin lesson's date, updates the lesson's status to `[PROMOTED vX.Y]`, **and adds a Changelog entry** attributed to your username. An attributed action.
- **Refute a lesson** — marks the lesson `[REFUTED YYYY-MM-DD: reason]` and adds an attributed Changelog entry. The lesson is never deleted; refutation is a status change.
- **Deprecate a rule** — marks the rule `[DEPRECATED YYYY-MM-DD]`; leaves its origin lesson untouched; adds an attributed Changelog entry.
- **Add a rule directly** (no origin lesson) — allowed but discouraged; prefer capture-then-promote. Use only for industry-fact rules with an external source. Attributed Changelog entry required.

The AI produces Changelog entries in the file's format; if you're checking or writing one by hand, it looks like:

```
[YYYY-MM-DD] vX.Y — initiator: your-username — Summary of the change.
```

Propose the **File version** bump in the header to match the version in your Changelog entry. Don't touch the `Schema:` field unless you've actually changed the file's structure (rare — open an issue first if you think you need to).

**Versioning: propose, then it's approved at merge.** Propose the version bump and a complete Changelog entry in your PR, in the file's format. The maintainer reviews and approves the version as part of merging — confirming the number is correct and sequential. If another PR lands first and takes your proposed number, you'll rebase to the next one. This mirrors the file's rule that version-generating changes are held until explicitly confirmed: you propose, the maintainer confirms. Batch related changes under one version rather than minting a new version per small tweak — tight version history is a project norm, not just tidiness.

## Attribution and your username

Attribution in Jobstead is a **good-faith provenance record**, not a security mechanism. It documents who contributed, accurately, when people act in good faith. It does not — and cannot — prevent a determined editor from changing a text file. The project doesn't pretend otherwise.

Practical rules for PRs:

- **Creators are immutable.** The Creators list in Attribution must never be modified, reordered, or removed. A PR that touches it will be declined.
- **You choose your username.** When your first contribution is merged, you're added to the Contributors list under a username you pick. State it in your PR. Your GitHub handle is evidence a maintainer can weigh, but the canonical username is the one you declare — the project is platform-independent by design.
- **Username collisions are resolved by a human.** If your chosen username already exists in Creators or Contributors, a maintainer will ask whether you're the same person returning (recognized, nothing added) or a distinct person (you'll be asked to pick a suffixed variant, e.g. `name-2`). This is the file's add-time collision rule, applied at review.
- **Don't add yourself to Contributors in your first PR.** Propose the change; the maintainer confirms your username and adds you when merging. This is the file's "ask before adding" consent rule, relocated to review.

Impersonation, spam, and abuse are handled by GitHub's review and access controls — branch protection, required review, rate limits — not by anything in the file. The file records outcomes; the repo defends the process.

## Heading text is load-bearing — do not rename sections

The README and `NOTICE` link directly into specific sections of `Jobstead.md` using GitHub's auto-generated heading anchors (for example, `Jobstead.md#attribution`). These anchors are derived from the exact heading text. **Renaming a section heading silently breaks every link that points to it.**

The headings other files depend on:

- `Attribution` (linked from README and NOTICE)
- `0. PROTOCOL`, `1. PLAYBOOK`, `2. LESSONS`, `3. APPLICANT PROFILE`, `4. APPLICATION TRACKER`, `5. SYNC LOG` (linked from README)
- `How to Start a New Conversation` (linked from README)

If you have a strong reason to rename one of these, you must update every link in `README.md` and `NOTICE` in the same PR, and note the rename in your Changelog entry.

## PR checklist

Before you submit, confirm:

- [ ] The change touches only the methodology layer (§0, §1, §2, or Attribution structure)
- [ ] No personal data anywhere — Profile/Tracker/Sync Log untouched and blank
- [ ] Any new lesson is PII-free: a pattern, not a case
- [ ] One logical change
- [ ] If it's an attributed operation (promote / refute / deprecate / add-rule), a correctly formatted Changelog entry is included
- [ ] Version bump and Changelog entry proposed in the file's format (date + username + summary); final number confirmed by the maintainer at merge; Schema field untouched (unless structure genuinely changed)
- [ ] Creators list unchanged
- [ ] No section headings renamed (or, if renamed, all dependent links updated)
- [ ] Your preferred username is stated in the PR description

## Questions

Open an issue. For anything about how a change should be recorded, the [Protocol](./Jobstead.md#0-protocol) section of the file is the source of truth — when this guide and the file disagree, the file wins.
