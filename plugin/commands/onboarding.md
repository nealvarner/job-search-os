---
description: One-command end-to-end setup for job-search-os. Working folder, connectors, schedules, personalized guide, LAMP list, resume, storybank — all in one ~45-min flow.
---

Run the **onboarding** skill end-to-end. Take the user from "plugin installed" to "system running" in a single session:

1. Verify their working folder is connected (instruct them if not)
2. Seed the working folder with data file scaffolding from plugin templates
3. Pull their personalized strategy guide if they have one (download from their private repo into the working folder)
4. Verify Gmail and Google Calendar connectors are active
5. Register the two scheduled tasks (Brief weekdays 7:30am, Synth Fridays 4pm) — output the `/schedule` commands for them to paste
6. Walk through the LAMP list (40 target companies, Advocacy/Motivation/Posting scoring)
7. Walk through resume.yaml (structured experience for the Tailor skill)
8. Walk through the storybank (8-10 STAR+Q behavioral interview stories)
9. Seed engage-with.txt with 20-30 LinkedIn URLs to comment on
10. Save config.yaml
11. Output a final status summary

The skill is resumable — if the user runs `/job-search-os:onboarding` a second time, detect what's already done and pick up at the first incomplete step.

Reference: the full onboarding behavior is in `skills/onboarding/SKILL.md`. Use it.
