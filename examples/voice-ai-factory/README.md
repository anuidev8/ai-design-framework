# Example: Voice-First AI Factory

Condensed walkthrough of the framework applied to a voice-first landing.

Inspired by the same agentic design mindset as [YC’s Head of Design — How To Design With AI](https://www.youtube.com/watch?v=VbqaL_eHhKY): `soul.md` first, explore variants, lock taste, then build.

## Story

Visitors arrive with an unclear business need. The page listens first (voice/text). A one-screen “AI Factory” assembles a production-ready workflow: intake → blueprint → assembly → testing → launch → Calendly CTA.

## Artifacts in this folder

| File | Role |
|------|------|
| `soul.md` | Project brain (condensed) |
| `moodboards.json` | Primary + accent directions |
| `design-system.md` | Locked Sketch to Color tokens |
| `specs.json` | Interaction states |
| `gallery/directions.md` | One-shot variant names |
| `design-inspiration/README.md` | Topic research pack layout |

## Locked direction

**Sketch to Color** — paper/monochrome start; soft blue in blueprint; orange in assembly; green when production-ready. One-screen voice-guided map (not scroll-first).

## How to reuse

1. Copy `soul.md` structure into your product.
2. Replace purpose/audience/constraints.
3. Run `prompts/one-shot-variants.md` with your mood boards.
4. Lock a direction; fill `design-system.md` + specs.
5. Run `prompts/build-prototype.md`.
