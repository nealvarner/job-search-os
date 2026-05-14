# Personalize job-search-os

The plugin is generic. Before the skills can do anything useful, they need to know who you are and what you're going after. This doc walks through every personalization step inside Cowork.

Plan ~2-3 hours total. One sitting or two evenings.

---

## Step 1 — Install the plugin and connect a host folder

Per the [README](README.md):

1. Claude Desktop → **Cowork** tab → **Customize → Browse plugins → Add marketplace** → paste `https://github.com/nealvarner/job-search-os` → install **job-search-os**.
2. **Customize → Connect folder** → choose or create a folder like `~/Documents/job-search/`. This is where your personal data will live and persist across Cowork sessions.

---

## Step 2 — Run onboarding

Inside Cowork:

```
/job-search-os:onboarding
```

If your version doesn't have a slash command yet, paste this instead:

> *"Walk me through onboarding for the job-search-os plugin. Copy the templates from the plugin into my connected host folder, then help me fill out lamp.csv, resume.yaml, me-on-a-page.md, storybank.md, and engage-with.txt. One at a time."*

This walks through everything below interactively.

---

## Step 3 — Build your LAMP list (`lamp.csv`)

Steve Dalton's framework. 40 companies, scored 1-3 on:

- **A — Advocacy** — do you know anyone there?
- **M — Motivation** — do you actually want to work there?
- **P — Posting** — do they hire your role / have an open req?

Total = A + M + P. Sort descending. Work the top of the list.

Brain-dump 40 companies first (don't filter). Then score. Then sort. Cowork can do the scoring with you — paste a company name and discuss.

---

## Step 4 — Build your resume YAML (`resume.yaml`)

The Tailor skill rewrites bullets per JD. It needs your experience as structured data, not a Word doc.

For each role:
- Company, title, dates, location
- 5-8 bullets, each with: action verb, what you did, quantified result
- A "more detail" expansion of each bullet for cases where the JD calls for depth

Schema is in `templates/resume.yaml.example`. Don't fabricate metrics — leave blank or note "approx." if uncertain.

---

## Step 5 — Write Me-in-30-Seconds + Me-on-a-Page

**Me in 30 Seconds** (75-90 words, 4 parts):
1. Who you are + personal connection (10-15 words)
2. What you're looking for (10-15 words)
3. Strengths + one proof point (25-30 words)
4. Call to action — a question (15-20 words)

**Me on a Page** — one-page forwardable PDF. Header, snapshot, 3 quantified wins, ideal next role. Build in [flowcv.com](https://flowcv.com) or Canva and drop the PDF in your host folder.

---

## Step 6 — Seed the storybank (`storybank.md`)

Behavioral interview stories. Coach uses this for mock panels. Aim for **8-10 stories** across:

- Leadership / influence without authority
- Conflict / disagreement
- Ambiguity / no clear path
- Prioritization / tradeoff
- Scaling something
- Metric-driven decision
- Stakeholder management
- Failure / lesson
- Hardest decision in 12 months
- Something you're proud of

Each story uses STAR + Q (Situation, Task, Action, Result, Quantification). Coach will tell you which question types your bank is weakest on after the first mock.

---

## Step 7 — Build the "engage with" list (`engage-with.txt`)

20-30 LinkedIn URLs Scout pulls from each morning; Drafter queues comment options each day.

Mix:
- Hiring managers at top 10 LAMP companies
- Thought leaders in your function
- Recruiters in your industry
- People with the role you want
- Alums

One URL per line. List evolves — drop accounts that don't post, add ones that do.

---

## Step 8 — Capture 5 target JDs

Save 5 job descriptions for the kinds of roles you want as files in your host folder under `target-jds/`. Tailor uses them to mine noun phrases; Researcher uses them to know what "fit" means.

Anonymize the company if you want — the role description is what matters.

---

## Step 9 — Configure tools

Edit `config.yaml` in your host folder (copy from `templates/config.yaml.example`):

```yaml
pipeline_tracker: huntr      # huntr | notion | sheets
email_provider: gmail        # gmail | outlook
linkedin_profile_url: https://linkedin.com/in/your-handle
location: "City, State"
location_preference: "open to remote, prefer [region]"
weekly_search_hours: 10
```

Connect Gmail and Calendar inside Cowork via **Customize → Connectors** so Drafter can save messages to drafts and Ops can read your calendar.

---

## Step 10 — Schedule the morning briefing

Inside Cowork:

```
/schedule every weekday at 7:30am: run /job-search-os:brief and save the
briefing to my job-search folder
```

(Scheduled tasks only run when your Mac is awake and Claude Desktop is open. Leave them on overnight, or invoke brief manually each morning.)

---

## Done

1. Read [`docs/strategy.md`](docs/strategy.md) and [`docs/cowork-operations.md`](docs/cowork-operations.md) before your first session — knowing the model makes the system 10x more useful.
2. Tomorrow morning at 7:30am you'll get your first briefing.
3. Block 8-9am on your calendar for the daily co-working session.

The first 2 weeks the drafts will need heavy editing — voice calibrates fast. By week 3 it'll feel like a real staff.
