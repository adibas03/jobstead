# Jobstead

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](./LICENSE)

*The community-grown job-search playbook you own and carry: hard-won lessons and tailoring strategy in one portable markdown file, AI-ready for any chat.*

Jobstead turns a fresh AI chat into a structured job-search assistant — with a fit-check methodology, ATS rules, tailoring strategy, and scam markers baked in. Paste it into ChatGPT, Claude, Gemini, or any AI chat, and it inherits the playbook and starts working against *your* profile and *your* job pipeline.

The **lessons layer grows on its own** — observations the AI notes during a session stay in the file, with no personal data attached. Promoting a lesson into a standing rule is a deliberate, attributed step. And your **personal information is never saved unless you ask** — your profile, applications, and history persist only when you tell the AI to record them. So the file always travels as shareable, profile-free methodology; you add your data, and keep that copy, only when you want to resume your own search.

**[→ Get the file: `Jobstead.md`](./Jobstead.md)**

---

## What problem this solves

A job search run through an AI chat usually starts from zero every conversation. You re-explain your background, re-establish what "a good fit" means, re-teach the same lessons you learned last week. Nothing accumulates.

Jobstead fixes that by separating what *should* accumulate from what shouldn't:

- **A methodology that grows** — distilled rules for evaluating roles, optimizing for applicant tracking systems (ATS), tailoring materials, and spotting scams, plus a lessons log that accrues new observations as you go. This layer is generic and PII-free, and it's what survives between conversations by default.
- **An optional state container** — your applicant profile, application tracker, and a running log. These stay blank unless you ask the AI to fill them, and they persist only in the copy you deliberately keep.

Because it's a single Markdown file, it travels anywhere a chat box accepts text, and it can be **merged** with other copies without losing information — so the methodology built in one conversation survives into the next, and can be shared without sharing anyone's private details.

## Who it's for

Anyone running a real job search with ChatGPT, Claude, or any capable AI chat who wants the work to compound instead of resetting. It's particularly useful for searches with structural constraints to work around — work authorization, visa thresholds, relocation, and title gaps, to name a few — where a consistent fit-check saves wasted applications.

## How to use it (about 5 minutes)

1. **Get the file.** Download or copy [`Jobstead.md`](./Jobstead.md).
2. **Paste it as your first message** in a new AI chat (ChatGPT, Claude, Gemini, or similar). The AI reads the methodology and notes that your profile is empty.
3. **Tell the AI who you are**, or upload a resume — it fills in the profile section by asking or parsing.
4. **Give it a role:** *"Review this role: [paste the job description or URL]"*. The AI runs the fit-check before doing any tailoring.

   *What that looks like:* you paste a role, and instead of jumping to a cover letter, the fit-check weighs it against your profile first — for example:
   > **Senior Data Engineer, Lisbon (hybrid).** Strong overlap on your dbt and pipeline work. **But:** the role is hybrid in Portugal and lists no relocation or sponsorship — and your profile says you're authorized to work in Canada only. That's a hard blocker, not a framing problem. **Recommendation: don't prioritize this one** unless you can confirm sponsorship. If you want, I can draft a one-line query to the recruiter to check before you invest in tailoring.

   When a role *does* fit, it moves on to surface your strongest points and tailor an honest, ATS-ready application for it.

5. **To continue in a future chat, just tell the AI to save your details** — for example, *"update the Jobstead with my information"* (or however you'd naturally put it). It records your profile and applications into the file. Save that copy — then in a new conversation (a fresh chat, since this one won't be remembered), paste it as your first message to pick up where you left off. Skip this step and nothing personal carries over; you keep only the methodology.

The file documents its own commands and conventions in full — the [How to Start a New Conversation](./Jobstead.md#how-to-start-a-new-conversation) section is the authoritative quickstart. This README is just the front door.

**[→ See a sample session](./examples/Jobstead-walkthrough.md)** (start to finish).

## What's in the file

The file documents each section in full; these links point straight to them:

- [**Attribution**](./Jobstead.md#attribution) — the file's creators, contributors, and full change history.
- [**Protocol**](./Jobstead.md#0-protocol) — the operating rules for how the AI reads, updates, and merges the file.
- [**Playbook**](./Jobstead.md#1-playbook) — operating rules: fit-check, ATS defaults, tailoring, cover-letter standards, scam markers, honest-framing principles.
- [**Lessons**](./Jobstead.md#2-lessons) — dated, persistent observations the playbook grows from.
- [**Applicant Profile**](./Jobstead.md#3-applicant-profile) — your background and constraints (a blank template until you fill it).
- [**Application Tracker**](./Jobstead.md#4-application-tracker) — the roles you've reviewed, applied to, and their status.
- [**Sync Log**](./Jobstead.md#5-sync-log) — a running record of session activity.
- [**How to Start a New Conversation**](./Jobstead.md#how-to-start-a-new-conversation) — the authoritative quickstart, with the commands you can use.

It's the single source of truth for what each one does.

## A note on honesty

The methodology is built around *not* faking your way past filters. It optimizes how you're presented — keyword alignment, framing, surfacing concerns before a recruiter finds them — but it explicitly refuses to fake credentials, citizenship, or depth you don't have. If you're looking for a tool to fabricate qualifications, this isn't it. That principle is written into the file and we'd like forks to keep it.

## What this is *not*

- **Not an enforcement system.** The file's attribution and "immutable creators" rules are good-faith conventions, maintained by human review — not access controls. Anyone can edit a text file; we're documenting provenance, not securing it.
- **Not a guarantee.** The lessons reflect real experience but include time-sensitive facts (salary thresholds, policy specifics) that go stale. Where the file gives a number, it tells you to verify the current figure. Do!!!
- **Not legal or immigration advice.** Work-authorization and visa notes are practical heuristics, not authoritative guidance.
- **Not uniform across models.** The methodology is the same wherever you paste it, but the quality of what you get depends on the AI running it — a more capable model reasons through a fit-check or a tailoring pass better than a weaker one. Portability means it runs anywhere; it doesn't mean every model executes it equally well.

## Contributing

Jobstead improves when people contribute lessons and rules back — and when you do, you're recorded in the file's own permanent, append-only record. A promoted rule or lesson is attributed to your username in the Changelog and Contributors list, and that provenance travels with every copy of the file thereafter. Contributions go through pull requests that map onto those same Changelog and Contributor conventions — see **[CONTRIBUTING](./CONTRIBUTING.md)** for how a proposed rule or lesson becomes a properly attributed entry.

## License

[Apache-2.0](./LICENSE). Attribution and provenance are maintained in the file itself — see [`NOTICE`](./NOTICE) and the [Attribution section](./Jobstead.md#attribution) of the artifact.
