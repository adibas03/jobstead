# Jobstead in Action

> A real exchange, lightly trimmed. **Maya is a fictional applicant** (no real person's data), but the resume Jobstead reads is a real document and the job posting it evaluates is a real listing. What you're seeing is how the conversation actually flows.
>
> **The two inputs behind this exchange:**
> - The file Maya pastes — [`Jobstead.md`](../Jobstead.md) (the methodology and templates)
> - The resume Jobstead reads — [`Maya_Resume.docx`](./Maya_Resume.docx) (a synthetic sample input)

---

## ① Getting set up

🧑 **Maya** &nbsp;·&nbsp; *pastes the [Jobstead file](../Jobstead.md)*

> Hi.

🤖 **Jobstead**

> Loaded — I've got the methodology and protocol. Your Applicant Profile is empty, so before we look at any roles, I need to know who I'm working for. Paste or attach your résumé and I'll build the profile from it, or just tell me your background in a few lines — whichever's easier.

🧑 **Maya** &nbsp;·&nbsp; *attaches her résumé — [`Maya_Resume.docx`](./Maya_Resume.docx)*

> Here you go.

🤖 **Jobstead**

> Read it. Here's the profile I've built from it:
>
> - Toronto, Canada · Canadian citizen
> - **Production-fluent:** SQL, Python (pandas), dbt
> - **Familiar:** Airflow (basic), Git, Snowflake — though your résumé says you used it briefly and not deeply, so I've noted it as shallow rather than a strength
> - **Not held:** Power BI, Looker, Spark
> - 6 years, fintech and retail · targeting analytics-engineering, remote
>
> Quick thing before we start, since it's your first time: **this file *is* your memory.** The methodology improves on its own as we go, but your personal details — this profile, your applications — only get saved when you ask me to. At the end, tell me to update the file, keep the copy, and paste it into a new chat next time to pick up where we left off. Nothing saves automatically.
>
> Want to throw a role at me?

---

## ② Checking a role

🧑 **Maya**

> Yeah — this one looks perfect. "Data Engineer / Analytics Engineer, dbt + Snowflake," remote, mid-senior. Should I apply?

🤖 **Jobstead**

> It's a strong technical match — but before you spend time tailoring, one thing stops me, and I'd rather flag it than let you find out on a screening call.
>
> The posting says remote but "open to candidates in USA," and there's no mention of sponsorship. Your profile says Canadian, no US work authorization. **That's a hard blocker as written.**
>
> Before I write it off, though — is that still accurate? If you've picked up US work rights since your résumé, this flips to a genuinely good fit. If not, this is a skip, however well the stack lines up.

🧑 **Maya**

> No, still just Canadian, no US authorization.

🤖 **Jobstead**

> Then I'd skip this one. And honestly, even setting the authorization aside, two softer things would've come up:
>
> - It leans on **Snowflake** depth — yours is shallow by your own résumé.
> - It wants **Power BI**, which you don't have.
>
> So it's a skip on work authorization, with a couple of gaps behind it. Not worth the tailoring time.

---

## ③ Learning something along the way

🤖 **Jobstead**

> One thing worth keeping, though — I've noticed this pattern: a "Remote (one country)" listing almost always means you need work rights *in* that country, even when it doesn't say so. I'll save it as a lesson so it carries forward:
>
> > *"Remote (single country)" postings assume in-country work authorization unless sponsorship is stated — treat as a hard filter, not borderless remote.*

---

## ④ Saving and leaving

🧑 **Maya**

> Useful. Let's stop here — save my stuff.

🤖 **Jobstead**

> Done. I've folded your profile, this skipped role, and the new lesson into the file. Save this copy, and paste it into a fresh chat next time — we'll pick up with your profile intact. Nothing carries over on its own, so hang onto it.

---

> **What just happened:** Jobstead read a real résumé (and corrected a detail the applicant might have overstated), checked a real posting against it, **caught a blocker and asked rather than assumed**, gave an honest "don't bother," and learned something portable along the way. That mix — grounded in your actual documents, honest about fit, getting smarter over time — is the point.
>
> For the full set of rules behind this, see [`Jobstead.md`](../Jobstead.md).
