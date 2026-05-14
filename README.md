# job-search-os

A **Claude Cowork plugin** that turns a serious job search into a system.

Built on a simple premise: **the thinking is the bottleneck, not the typing.** Talking to people is the job search — applying online is a side effect. This plugin gives Cowork a chief-of-staff layer that handles research, drafting, pipeline tracking, mock interviews, and weekly synthesis, so the user spends their time on the conversations that actually move offers.

Methodology distilled from Aakash Gupta, Justin Welsh, Steve Dalton's *2-Hour Job Search*, Austin Belcak's *Cultivated Culture*, the LDS *Find a Better Job* self-reliance course, and current 2026 best practices.

---

## What's in this plugin

Nine named "modes" — Cowork skills that act like a small staff:

| Skill | Role |
|---|---|
| **brief** | Morning briefing producer (typically `/schedule` on weekday mornings) |
| **scout** | Sources leads, monitors job boards, tracks target-company news |
| **drafter** | Writes outreach, comments, follow-ups, thank-yous in the user's voice |
| **researcher** | Deep-dives a company or person before outreach or interviews |
| **tailor** | Customizes resume per JD; never fabricates; ATS-friendly output |
| **builder** | Produces Belcak-style Value Validation Projects |
| **coach** | Mock interviews with STAR-Q scoring; storybank curator |
| **ops** | Pipeline tracker, 3B7 follow-up logic, calendar, file management |
| **synth** | Weekly review (Friday); surfaces patterns; drafts next-week commitments |

---

## The hard line — what this plugin DOESN'T do

**No autonomous LinkedIn actions.** Cowork drafts and surfaces context; the user hits send themselves. LinkedIn's TOS prohibits automated authenticated browsing and account ban is the only catastrophic failure mode in this system. The 30 seconds saved by automating the click is not worth the existential risk to the user's primary professional platform.

**No mass-apply.** 10 deeply-researched outreaches per day beats 100 spray-and-pray. The whole system is built for depth.

---

## Install

This is a Cowork plugin distributed as a marketplace. The user installs it from inside Claude Cowork — no terminal, no git, no developer setup.

**Requirements:**
- Claude Pro, Max, Team, or Enterprise (Cowork is not on the free plan)
- Claude Desktop app for macOS or Windows
- A GitHub account (so you can be added as a collaborator to this private repo)

**Install steps:**

1. Open Claude Desktop and switch to the **Cowork** tab.
2. Click **Customize → Browse plugins → Add marketplace**.
3. Paste this repo's URL: `https://github.com/nealvarner/job-search-os`
4. Find **job-search-os** in the list and click **Install**.
5. Cowork loads the 9 skills automatically. Verify with `/job-search-os:brief` (or just ask Cowork "give me my morning briefing").

**One critical setup step — connect a host folder for persistent data.**

Cowork's VM filesystem is non-deterministic across sessions. Your LAMP list, resume.yaml, briefings archive, and pipeline log must live in a folder on your Mac/PC that Cowork can read and write. In Cowork:

- **Customize → Connect folder** → pick (or create) a folder like `~/Documents/job-search/`
- That folder becomes your persistent state. Skills write here; sessions can re-read across days.

When you first invoke a skill, it'll detect there's no data yet and walk you through seeding it from `templates/`.

---

## Schedule the morning briefing

Cowork has built-in scheduling via `/schedule`. In a Cowork session:

```
/schedule every weekday at 7:30am: run /job-search-os:brief and save the
briefing to my job-search folder
```

**Caveat:** Scheduled tasks only run when your computer is awake and Claude Desktop is open. Leave your Mac/PC awake-with-display-off overnight, or invoke `brief` manually each morning. (Don't worry — invoking `brief` takes 30 seconds.)

---

## Daily flow

1. **Morning** (5-10 min) — Open Cowork. If scheduled, your briefing is waiting. Otherwise say *"Brief, give me today."*
2. **Co-working session** (30-60 min) — Walk through the queue. For each drafted outreach: Cowork pulls up the target's context, you edit, you send from your own browser session (logged into your Gmail / LinkedIn).
3. **On-demand throughout the day** — *"Researcher, prep me for my 2pm with [Name]"* / *"Coach, run me through a behavioral panel"* / *"Builder, give me 3 VVP options for [Company]"*
4. **Friday** — Synth posts the weekly review.

Total active time: ~60-90 min/day. Cowork handles everything around it.

---

## What's in this repo

```
job-search-os/                           (marketplace)
├── .claude-plugin/
│   └── marketplace.json                 single-plugin marketplace catalog
├── plugin/                              the plugin itself
│   ├── .claude-plugin/
│   │   └── plugin.json                  plugin manifest
│   ├── skills/                          the 9 named modes
│   │   ├── brief/SKILL.md
│   │   ├── scout/SKILL.md
│   │   ├── drafter/SKILL.md
│   │   ├── researcher/SKILL.md
│   │   ├── tailor/SKILL.md
│   │   ├── builder/SKILL.md
│   │   ├── coach/SKILL.md
│   │   ├── ops/SKILL.md
│   │   └── synth/SKILL.md
│   ├── docs/                            methodology + ops docs
│   │   ├── strategy.md
│   │   ├── outreach-templates.md
│   │   ├── cowork-operations.md
│   │   └── methodology-notes.md
│   ├── templates/                       seed data files
│   │   ├── lamp.csv.example
│   │   ├── resume.yaml.example
│   │   ├── me-on-a-page.md.example
│   │   ├── storybank.md.example
│   │   ├── engage-with.txt.example
│   │   └── config.yaml.example
│   └── personalize.md                   customization walkthrough
├── README.md                            this file
└── LICENSE
```

Structure mirrors Anthropic's [knowledge-work-plugins](https://github.com/anthropics/knowledge-work-plugins) marketplace pattern.

---

## Personalize

After installing the plugin and connecting a host folder, run:

```
/job-search-os:onboarding
```

(Or paste: *"Walk me through onboarding — copy the templates into my host folder, then help me fill out my LAMP list, resume.yaml, and storybank."*)

The full walkthrough is in [`plugin/personalize.md`](plugin/personalize.md). ~45-60 min one-time.

---

## License

MIT.
