# Personalize job-search-os for you

This repo is a generic framework. Before the skills can do anything useful, they need to know who you are and what you're going after. This doc walks through every personalization step.

Plan ~2-3 hours total. You can do it in one sitting or split it across two evenings.

---

## Step 1 — Run `/onboarding`

Inside Claude Code:

```
/onboarding
```

This walks you through everything below interactively. If you'd rather do it manually, follow the steps below.

---

## Step 2 — Copy example files into `data/`

```bash
cp templates/lamp.csv.example data/lamp.csv
cp templates/resume.yaml.example data/resume.yaml
cp templates/me-on-a-page.md.example data/me-on-a-page.md
cp templates/storybank.md.example data/storybank.md
cp templates/engage-with.txt.example data/engage-with.txt
cp -r templates/target-jds.example data/target-jds
```

`data/` is gitignored, so everything you put here stays local to you.

---

## Step 3 — Build your LAMP list (`data/lamp.csv`)

Steve Dalton's framework. 40 companies, scored on three dimensions (1-3 each):

- **A — Advocacy** — do you know anyone there?
- **M — Motivation** — do you actually want to work there?
- **P — Posting** — do they hire your role / have an open req?

Total = A + M + P. Sort descending. Work the top of the list.

Fill in the CSV. Brain-dump first (don't filter), then score, then sort.

---

## Step 4 — Build your resume YAML (`data/resume.yaml`)

The Tailor skill rewrites bullets per JD. To do that, it needs your experience as structured data, not as a Word doc.

For each role, capture:
- Company, title, dates, location
- 5-8 bullets, each with: action verb, what you did, quantified result
- A "more detail" expansion of each bullet for cases when the JD calls for depth

The example file has the schema. Don't fabricate metrics — leave them blank if you don't know. The Tailor will use what's there.

---

## Step 5 — Write your Me-in-30-Seconds + Me-on-a-Page

**Me in 30 Seconds** (75-90 words, 4 parts):
1. Who you are + personal connection (10-15 words)
2. What you're looking for (10-15 words)
3. Strengths + one proof point (25-30 words)
4. Call to action — a question (15-20 words)

**Me on a Page** — one-page PDF you can forward when someone says "send me something I can share." Header, snapshot, 3 quantified wins, ideal next role. Build it in [flowcv.com](https://flowcv.com) or Canva and drop the PDF in `data/`.

---

## Step 6 — Seed your storybank (`data/storybank.md`)

Behavioral interview stories. Coach uses this for mock interviews. Aim for **8-10 stories** spanning these question types:

- Leadership / influence without authority
- Conflict / disagreement
- Ambiguity / no clear path
- Prioritization / tradeoff
- Scaling something
- Metric-driven decision
- Stakeholder management
- Failure / what you learned
- The hardest decision you've made
- Something you're proud of

Each story uses STAR + Q (Situation, Task, Action, Result, Quantification). Coach will tell you which question types your storybank is weakest on after the first mock session.

---

## Step 7 — Build your "engage with" list (`data/engage-with.txt`)

20-30 LinkedIn accounts you'll comment on regularly. Scout pulls their posts each morning; Drafter queues comment options each day. Mix:

- Hiring managers at your top 10 LAMP companies
- Thought leaders in your function
- Recruiters in your industry
- People with the role you want
- Alums from your school

One URL per line. The list evolves — drop accounts that don't post, add ones that do.

---

## Step 8 — Capture target JDs (`data/target-jds/`)

5 job descriptions for the kinds of roles you want. Tailor uses these to mine noun phrases for semantic matching; Researcher uses them to know what "fit" means.

Save each as a `.md` file with the JD pasted in. Anonymize if you want — the company doesn't matter, the role does.

---

## Step 9 — Configure tools

Edit `config.yaml` (copy `config.example.yaml`):

```yaml
pipeline_tracker: huntr   # huntr | notion | sheets
email_provider: gmail     # gmail | outlook
linkedin_profile_url: https://linkedin.com/in/your-handle
location: "City, State"
location_preference: "open to remote, prefer [region]"
weekly_search_hours: 10   # tightens the daily cadence if you're employed
```

---

## Step 10 — Wire up the cron (optional but high-leverage)

```bash
./scripts/install-cron.sh
```

Installs:
- 6:00am — LAMP refresh + job-board sweep
- 6:30am — Pipeline triage
- 6:45am — Today's outreach drafts (saved to Gmail drafts)
- 7:00am — Morning briefing email to your inbox
- Friday 4pm — Weekly synthesis

If you'd rather run manually, skip this and invoke `Brief` each morning yourself.

---

## Done. What now?

1. Open Claude Code in `~/job-search-os/`
2. Tomorrow at 7am you'll get your first morning briefing
3. Block 8-9am on your calendar for the daily co-working session
4. Read [`docs/strategy.md`](docs/strategy.md) and [`docs/cowork-operations.md`](docs/cowork-operations.md) before the first session — knowing the model makes the system 10x more useful

The first 2 weeks the drafts will need heavy editing. Voice calibrates fast. By week 3 it'll feel like a real staff.
