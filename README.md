# job-search-os

A Claude-driven operating system for a serious job search.

Built on a simple premise: **the thinking is the bottleneck, not the typing.** Talking to people is the job search — applying online is a side effect. This repo gives you a chief-of-staff layer (Claude Code skills + Cowork co-working sessions) that handles the research, drafting, pipeline tracking, and synthesis, so you can spend your time on the conversations that actually move offers.

Methodology distilled from Aakash Gupta, Justin Welsh, Steve Dalton's *2-Hour Job Search*, Austin Belcak's *Cultivated Culture*, the LDS Church's *Find a Better Job* self-reliance course, and current 2026 best practices.

---

## The model

Three layers:

1. **Autonomous overnight (Claude Code skills on cron)** — by 7am, you have a morning briefing in your inbox: today's drafted outreaches, follow-ups due, new postings at target companies, comment queue.
2. **Daily co-working session (30-60 min with Cowork)** — review the briefing, edit drafts, hit send, file in pipeline tracker.
3. **On-demand event-triggered modes** — interview tomorrow, recruiter reply, new job lands — invoke the right "team member" and let it run.

Nine named modes act like a small staff:

| Mode | Role |
|---|---|
| **Brief** | Morning briefing producer (auto, daily) |
| **Scout** | Sources leads, monitors job boards, tracks target-company news |
| **Drafter** | Writes outreach, comments, follow-ups, thank-yous |
| **Researcher** | Deep-dives a company/person before outreach or interview |
| **Tailor** | Customizes resume per JD |
| **Builder** | Produces Belcak-style Value Validation Projects |
| **Coach** | Mock interviews, behavioral prep, storybank curator |
| **Ops** | Pipeline tracker, calendar, file management |
| **Synth** | Weekly review, surface patterns, draft next-week commitments |

---

## The hard line — what this system DOESN'T do

**No autonomous LinkedIn actions.** Cowork drafts and surfaces context; you hit send yourself. LinkedIn's TOS prohibits automated authenticated browsing and their bot detection is aggressive — account ban is the only catastrophic failure mode in this system. The 30 seconds saved by automating the click is not worth the existential risk to your primary professional platform.

**No mass-apply.** 10 deeply-researched outreaches per day beats 100 spray-and-pray. The whole system is built for depth.

---

## Setup

```bash
git clone https://github.com/[your-username]/job-search-os ~/job-search-os
cd ~/job-search-os
./setup.sh
```

`setup.sh` walks you through:
- Claude Code auth
- Copying example templates → personal data files (gitignored)
- Gmail OAuth (for draft creation)
- Pipeline tracker choice (Huntr / Notion / Google Sheets)
- Cron install for the morning briefing

Then run `/onboarding` once inside Claude Code — ~45 min walkthrough that fills out your LAMP list, your resume YAML, your storybank, and your Me-in-30-Seconds.

After that, daily cadence:

- **7am** — morning briefing in your inbox
- **8-9am** — 30-min co-working session
- **Throughout day** — invoke modes on demand
- **Friday 4pm** — weekly synthesis

Total active time: ~60-90 min/day.

---

## What's in this repo

```
job-search-os/
├── README.md                  this file
├── personalize.md             how to customize for yourself
├── docs/
│   ├── strategy.md            the underlying playbook
│   ├── outreach-templates.md  copy-pasteable templates (10 scenarios)
│   ├── cowork-operations.md   how the daily cadence runs
│   └── methodology-notes.md   LDS self-reliance methods worth knowing
├── .claude/skills/            the 9 named modes
├── templates/                 example data files to copy + personalize
├── data/                      YOUR personal data lives here (gitignored)
├── briefings/                 daily briefing archive (gitignored)
└── pipeline/                  pipeline logs (gitignored)
```

---

## Personalization

This repo is a generic framework. Every person using it needs to personalize:

- `data/lamp.csv` — your 40 target companies, scored on advocacy/motivation/posting
- `data/resume.yaml` — your experience as structured YAML (used by Tailor)
- `data/me-on-a-page.md` — your forwardable 1-pager
- `data/storybank.md` — your behavioral interview stories
- `data/engage-with.txt` — 20-30 LinkedIn accounts you'll comment on daily
- `data/target-jds/` — 5 target-role JDs for semantic matching

The `templates/` directory has examples for each. Copy `.example` files into `data/`, then edit. Personal data files are gitignored.

See [`personalize.md`](personalize.md) for the full walkthrough.

---

## Sharing this with someone

Two options:

1. **Fork it** — they get their own private repo, their personal data stays in their fork only.
2. **Clone and own** — `git clone --depth=1` then re-init with their own remote. No history connection.

Either way, personal data in `data/` is gitignored from day one. The repo is the framework; the personal layer is local.

---

## Honest scope

- **One evening** to scaffold a personal copy and seed the LAMP list.
- **One afternoon** to run `/onboarding` and produce the resume YAML + storybank.
- **Two weeks** of tuning — drafts will need heavy editing at first; voice calibrates over week 1-2.
- **Then ~60-90 min/day** of focused job-search work, with Claude handling everything around it.

---

## License

MIT. Use it, fork it, adapt it.

---

*Built May 2026. Methodology current as of then; tooling churns — read [`docs/strategy.md`](docs/strategy.md) for the principles, not just the tool list.*
