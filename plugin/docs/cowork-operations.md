# Cowork Operations

How the daily cadence actually runs.

---

## The model in one paragraph

Cowork plays the role of your full-time chief of staff for the search. It does the research, drafts the messages, fills the forms, tracks the pipeline, runs the rehearsals, and produces daily and weekly synthesis. You do three things only humans can: make relationship-level judgment calls, hit send on every message, and show up to the conversations. Everything else, Cowork runs.

---

## Three layers

### Layer 1 — Scheduled morning briefing (Cowork /schedule)

Cowork's `/schedule` command runs a fresh session at a chosen time and executes a prompt. Use it to produce the morning briefing.

```
/schedule every weekday at 7:30am: run /job-search-os:brief and save the
briefing to my job-search folder
```

What that scheduled run does, in order:

| Step | Action | Output |
|---|---|---|
| 1 | LAMP refresh: re-rank by motivation × posting freshness × advocacy | Updated `lamp.csv` in host folder |
| 2 | Job-board sweep (Wellfound, Built In, HN, Indeed RSS, BYU-Pathway, SHRM Jobs) | New rows in pipeline tracker, tagged by LAMP match |
| 3 | Pipeline triage: who's overdue per 3B7, who's gone cold, who has interviews this week, who needs a thank-you | Action queue |
| 4 | Today's 5 outreach drafts | Saved as Gmail drafts via the Gmail connector |
| 5 | Comment queue: 5 substantive comment options on posts from `engage-with.txt` | Listed in briefing with post links |
| 6 | Morning briefing saved to `briefings/[date].md` in host folder | Ready to review |

Friday 4pm: a separate scheduled task invokes Synth for the weekly synthesis.

**Important caveats:**
- Scheduled tasks only run **when your computer is awake and Claude Desktop is open**. Leave the Mac/PC awake-with-display-off overnight, or invoke `brief` manually each morning (takes 30 seconds).
- The Gmail connector occasionally drops session state — Brief's prompt should reconnect if needed before drafting.
- If you miss a morning, just invoke `/job-search-os:brief` manually when you sit down. Same output.

### Layer 2 — Daily co-working session (30-60 min, Cowork + you together)

The entire "active" portion of the search.

1. **Briefing review (5 min)** — Cowork walks you through the queue, highlighting decision points.
2. **Outreach push (15 min)** — For each of the 5 drafted messages: Cowork pulls up the target's profile/post in a browser tab so you see context; you edit; you send from your own session. Cowork logs.
3. **Comment queue (10 min)** — Cowork pulls up each target post. You pick 3, edit, post yourself. Cowork logs.
4. **Follow-ups (5 min)** — Cowork queues 3-day and 7-day follow-ups. You review, send.
5. **Application slot (10 min)** — Tailor has customized a resume for the top new posting. You review, Cowork fills the ATS form (Greenhouse/Lever/Workday), you submit.
6. **Wrap (5 min)** — Cowork updates pipeline, confirms tomorrow's focus.

**Critical:** you hit send on every LinkedIn action yourself. Cowork drafts, surfaces context, logs.

### Layer 3 — On-demand event-triggered modes

Invoke when something happens:

- **`prep-for-interview`** — given a company + interviewer + time. Cowork pulls news, the interviewer's public activity, recent shipped products, Glassdoor; produces 10 likely questions, 3 storybank matches, 5 sharp questions to ask, 2 talking points threading back to the role.
- **`post-interview`** — within 30 min. Drafts the thank-you, suggests a follow-up artifact, schedules a 2-week staying-warm reminder.
- **`new-job-alert`** — a Tier-1 LAMP job lands. Tailors resume, drafts cover note, identifies 2nd-degree contacts, drafts the warm-intro request, files in pipeline.
- **`vvp`** — Value Validation Project builder. Researches the target ~30 min, gives 3 deliverable options with outlines, builds the chosen one as a Google Doc, drafts the DM.
- **`mock-interview`** — full behavioral simulation with STAR-Q scoring and storybank update.
- **`recruiter-reply`** — inbound recruiter email. Classifies (real fit vs. keep-door-open), drafts the response.
- **`weekly-review`** — Friday synthesis. Surfaces stalls, drafts next-week commitments.

---

## The hard line — what Cowork doesn't do

**Cowork never:**
- Sends LinkedIn DMs autonomously
- Posts or comments on LinkedIn unattended
- Auto-applies via LinkedIn Easy Apply at volume
- Runs scheduled tasks against any authenticated LinkedIn session

**Cowork always:**
- Drafts the content
- Pulls up the target context in a browser tab
- Sits next to you while you send
- Logs the action after

LinkedIn account ban is the only catastrophic failure mode in this system. The 30 seconds saved by automating the click is not worth the existential risk to your primary professional platform. Synchronous co-working is fine because LinkedIn sees a normal human session. Autonomous LinkedIn actions are not.

Everything else (ATS forms on Greenhouse/Lever/Workday, Gmail drafts, Google Sheets, Notion, Huntr web app, calendar, company-website research, public job boards, news sites) is fair game for Cowork to drive end-to-end.

---

## The "team" — naming the modes

The 9 skills act like a small staff. Talk to them by name.

| Name | Role | When you invoke |
|---|---|---|
| **brief** | Morning briefing producer | `/schedule` 7:30am, or "give me my briefing" |
| **scout** | Sources leads, monitors job boards, tracks target news | Auto from Brief, or "what's new at [Company]" |
| **drafter** | Writes outreach, comments, follow-ups | Auto from Brief, or "draft me a connection request to [Name]" |
| **researcher** | Deep-dives a company or person | "Researcher, prep me on [Company]" |
| **tailor** | Customizes resume per JD | Auto when a high-fit job lands, or "tailor my resume for this JD" |
| **builder** | Produces Value Validation Projects | "Builder, give me 3 VVP options for [Company]" |
| **coach** | Mock interviews, behavioral prep, storybank | "Coach, run me through a panel for [Role]" |
| **ops** | Pipeline tracker, calendar, file management | "Ops, what's overdue?" |
| **synth** | Weekly review, surface patterns, draft commitments | `/schedule` Friday 4pm, or "weekly review" |

Skills are namespaced in Cowork: `/job-search-os:brief`, `/job-search-os:researcher`, etc. You can also just ask Cowork in natural language — it'll pick the right skill based on the description.

Researcher example in practice: *"Researcher, before my 2pm call with the Reckitt competitor, give me a 1-pager"* — Cowork picks Researcher and runs.

---

## The first two weeks

| Day | Layer 2 focus | Layer 1 ramps |
|---|---|---|
| Day 1 | `/onboarding`: LAMP seed, resume YAML, storybank intake | Briefing starts dry; populates as data lands |
| Day 2 | LinkedIn profile rewrite session: Drafter writes 3 headline options, About, Featured items | Scout starts pulling feeds |
| Day 3 | Recommendation requests: Drafter writes 5 personalized asks; you send from Gmail | Drafter populates today's outreach queue |
| Day 4 | First Belcak VVP: Builder produces the Google Doc | First full daily cadence |
| Day 5 | The 50-person network blast: Cowork pulls your contacts, drafts personalized line 1 for each, queues in Gmail drafts | — |
| Day 6 | Outreach + comment cadence; Coach runs one mock interview | — |
| Day 7 | Synth's first weekly review | — |
| Week 2 | Full 15-10-2 cadence; second VVP; first informational interviews booked | First referrals start landing |

By end of week 2: profile rebuilt, 50 warm contacts re-engaged, 10-15 cold outreaches/day, 2-3 informational interviews/week, full pipeline tracked.

---

## Where state lives (the host-folder pattern)

Cowork's VM filesystem is **not** deterministic across sessions. Don't store anything important inside the VM.

Instead, connect a host folder on day one (Customize → Connect folder). Everything persistent lives there:

```
~/Documents/job-search/                  (or wherever you connected)
├── lamp.csv                             your 40 target companies
├── resume.yaml                          source-of-truth experience
├── me-on-a-page.md                      forwardable 1-pager
├── storybank.md                         behavioral interview stories
├── engage-with.txt                      LinkedIn URLs to comment on
├── config.yaml                          tracker, email, location prefs
├── target-jds/                          5 target-role JDs
├── briefings/                           daily briefing archive
├── pipeline/                            pipeline log
└── output/                              tailored resumes, VVPs, etc.
```

All skills read and write here. When you onboard, the plugin copies its `templates/` into this folder so you have starting structure.

---

## What this isn't

- **Not a mass-apply system.** Depth over volume. 10 deeply-researched outreaches > 100 spray.
- **Not a replacement for the human work.** The conversations are still the search.
- **Not a LinkedIn bot.** Already covered.
- **Not a black box.** Every artifact is reviewable in your connected host folder. Audit trail is right there.
