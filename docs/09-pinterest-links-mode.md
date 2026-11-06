# Pinterest links mode (v2 skill)

The fastest way to use the framework: **you pick pins, the agent does everything else.**

## Install

```bash
./install.sh                          # every tool found: Antigravity, Claude Code, Codex, Cursor
./install.sh antigravity              # one tool
./install.sh --project /path/to/app   # inside a repo (.agent/skills + .claude/skills)
```

## Run

```
/ai-design-framework
brief: landing page for a breathing app — calm, premium
links:
https://pin.it/abc123
https://www.pinterest.com/pin/987654/
...
```

In Antigravity you can also just say: *"Use ai-design-framework with these pins: …"*

## What happens

| Phase | You | Agent | Files |
|---|---|---|---|
| 1 Collect | — | downloads pins, extracts colors, drafts soul.md | `design/pins/`, `sources.json`, `soul.md` |
| 2 Rate | **confirm or swap the top 5** | scores 6 criteria per pin | `ratings.json` |
| 3 Mood board | — | one named direction, palette, type, keywords | `moodboard.json`, `moodboard.html` |
| 4 Proposal | **approve or request changes** | tokens, motion meanings, interaction concepts, components | `proposal.json`, `proposal.html` |
| 5 Tokens | — | DTCG tokens → CSS / Tailwind | `design-tokens.json`, CSS file |
| 6 Build | — | components, motion, interactions, responsive, verification | your app code |

Partial runs: say *moodboard only*, *proposal only*, *build from the approved proposal*, or *resume*.

## Tips

- 10–15 pins is the sweet spot. Mix layouts, colors and motion ideas — the rating keeps the best 5.
- Private pins and boards behind a login can't be downloaded; save the image and pass the file path instead.
- In an existing app, the skill maps the new design onto your existing tokens instead of adding a second system.
