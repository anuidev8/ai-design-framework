# AI Design Framework

An **agentic UI/UX design workflow** for building products with AI coding agents.

Inspired by [YC's Head of Design Shows You How To Design With AI](https://www.youtube.com/watch?v=VbqaL_eHhKY) (Eve Bouffard, Y Combinator) — where the bottleneck shifts from software execution to **imagination**, and `soul.md` becomes the project source of truth.

This repo packages that idea into a **repeatable framework**: project brain → visual research → mood boards → design system → one-shot variants → prototype.

---

## Why this exists

Traditional design: brief → Figma → handoff → build.

AI-era design (from the YC talk + this framework):

1. Write a sharp product brain (`soul.md`)
2. Gather visual references (mood boards)
3. Ask an agent for many one-shot directions
4. Pin favorites in a disposable gallery
5. Lock one direction + tokens
6. Build the real prototype from the locked decisions

You spend less time fighting tools and more time choosing taste, story, and interaction.

---

## Quick start — Pinterest links → built UI (v2 skill)

```bash
git clone https://github.com/anuidev8/ai-design-framework && cd ai-design-framework
./install.sh            # installs the skill in Antigravity, Claude Code, Codex, Cursor (whichever you have)
```

Then in your app's repo:

```
/ai-design-framework
brief: landing page for a breathing app — calm, premium
links: https://pin.it/abc123 https://www.pinterest.com/pin/987654/ ...
```

The agent downloads the pins, rates them and keeps the **top 5** (you confirm), builds a **mood board**, writes a **design proposal** — colors, type, motion meanings, interaction concepts (you approve) — then generates **design tokens** and **implements the UI with animations**. Guide: [docs/09-pinterest-links-mode.md](docs/09-pinterest-links-mode.md)

## Quick start — manual

```bash
# 1. Copy templates into your product repo
cp -R templates/ /path/to/your-app/product-workflow/

# 2. Fill soul.md (purpose, audience, constraints, UI principles)

# 3. Paste prompts/master-orchestrator.md into Cursor / Claude / Codex
#    (or run steps manually from docs/02-workflow-steps.md)

# 4. Compare variants in a gallery, pick one direction, implement
```

Or read the full guide: [docs/01-overview.md](docs/01-overview.md)

---

## Workflow at a glance

| Step | Artifact | Goal |
|------|----------|------|
| 1. Project brain | `soul.md` | Purpose, audience, constraints, UI principles |
| 2. Visual research | `pins/` or `references/` | 6–15 curated references |
| 3. Mood boards | `moodboards.json` | 2–3 directions scored against soul |
| 4. Design system | `design-system.md` | Tokens, components, screen layouts |
| 5. One-shot variants | gallery HTML / images | Explore many directions fast |
| 6. Specs | `specs/*.json` | States, flows, behaviors |
| 7. Prototype | app code | Implement the locked direction |

Detailed steps: [docs/02-workflow-steps.md](docs/02-workflow-steps.md)

---

## What's in this repo

```
ai-design-framework/
├── README.md
├── PUBLISHING.md          # How to publish this (or your fork) on GitHub
├── LICENSE
├── docs/                  # Human-readable guides
├── templates/             # Empty starter files for any product
├── prompts/               # Copy-paste agent prompts
├── examples/              # Worked example (Voice AI Factory)
├── skills/
│   └── ai-design-framework/   # The v2 skill: SKILL.md, scripts/, references/, templates/, stacks/
└── install.sh             # Installs the skill (global or per project)
```

---

## Reference video

**Watch:** [YC's Head of Design Shows You How To Design With AI](https://www.youtube.com/watch?v=VbqaL_eHhKY)

Key ideas this framework operationalizes:

- **`soul.md` as source of truth** — agents and humans share one brain file
- **Mood boards before pixels** — Pinterest / curated refs set taste early
- **One-shot many variants** — generate directions in parallel, then pick
- **Agents as builders** — coding agents implement; you decide direction
- **Imagination is the bottleneck** — structure the process so taste and story stay sharp

This is an independent open workflow inspired by that talk — not affiliated with Y Combinator.

---

## Example

See [examples/voice-ai-factory/](examples/voice-ai-factory/) for a condensed walkthrough of a voice-first landing built with this process (project brain → mood boards → gallery directions → locked Sketch to Color prototype).

---

## Publish on GitHub

Follow [PUBLISHING.md](PUBLISHING.md) to turn this folder into a public repository.

---

## License

MIT — see [LICENSE](LICENSE).
