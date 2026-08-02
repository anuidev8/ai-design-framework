# Mood boards

## Goal

Turn scattered references into **2–3 named directions**, then pick **one** primary.

Do not average all pins into a mushy middle aesthetic.

## Process

1. Score each reference against `soul.md` (fit 1–5).
2. Discard weak refs.
3. Cluster the rest by shared taste (light/paper vs dark/HUD vs playful/blocks…).
4. Name each cluster (e.g. “Paper Blueprint Factory”, “Voice Command Center”).
5. Choose a primary + optional accent board.

## Output shape (`moodboards.json`)

```json
{
  "primary": {
    "id": "paper-blueprint",
    "name": "Paper Blueprint Factory",
    "blend": "70% paper-blueprint, 20% voice assistant, 10% production HUD",
    "refs": ["pin-a.png", "pin-b.png"],
    "why": "Matches listen-first + modular assembly without cartoon factory"
  },
  "accent": {
    "id": "production-monitor",
    "name": "Production Readiness Accent",
    "refs": ["pin-c.png"],
    "why": "Darker status/risk panels for testing stage only"
  },
  "rejected": [
    { "file": "pin-neon.png", "why": "Generic AI purple glow — conflicts with soul constraints" }
  ]
}
```

Template: [`templates/moodboards.json`](../templates/moodboards.json)

## Rule from the YC-inspired workflow

Mood boards are for **taste**, not for copying. Extract shared principles (density, line weight, motion, metaphor) and write them into the design system.
