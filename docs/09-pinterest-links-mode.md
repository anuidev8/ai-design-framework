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
| 4 Proposal | look | colors, type, motion meanings, interaction concepts, components | `proposal.json`, `proposal.html`, `design-tokens.json` |
| 5 Preview | **approve or request changes** | a working HTML page of the design, opened in the browser with screenshots | `preview.html`, `tokens.css` |
| 6 Tokens | — | tokens → your app's CSS / Tailwind | CSS file |
| 7 Build | — | rebuilds the approved preview in your stack, compares screenshots | your app code |

Every page is served at **http://localhost:4600/** — a hub linking the mood board, proposal and preview. The preview has a toolbar: dark mode, reduced motion, **design notes** (labels what each animation and interaction means), mobile/tablet/desktop, replay.

**Visual first:** no app code is touched until you approve the preview.

Partial runs: say *moodboard only*, *preview only* (no app code), *build from the approved preview*, or *resume*.

## Make every agent visual-first (global rule)

```bash
./install.sh --rules              # skill + rule for every tool found
./install.sh --rules antigravity  # just Antigravity (~/.gemini/GEMINI.md)
```

Adds `rules/visual-first.md` to each tool's global rules (`~/.gemini/GEMINI.md`, `~/.claude/CLAUDE.md`, `~/.codex/AGENTS.md`; Cursor: paste it into Settings → Rules). From then on, any UI task — not just this skill — starts with an HTML preview you see and approve. Re-running replaces the rule instead of duplicating it.

## Tips

- 10–15 pins is the sweet spot. Mix layouts, colors and motion ideas — the rating keeps the best 5.
- In Antigravity, downloading pins needs internet: if the sandbox blocks it, the agent re-runs the command outside the sandbox.
- Private pins and boards behind a login can't be downloaded; save the image and pass the file path instead.
- In an existing app, the skill maps the new design onto your existing tokens instead of adding a second system.
