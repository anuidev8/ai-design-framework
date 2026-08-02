# Design system (practical)

## Goal

Convert the **primary mood board** into tokens an agent can implement tomorrow.

Avoid concept-deck fluff. Prefer:

- hex / CSS variables
- type scale with roles
- spacing scale
- motion verbs (enter, stage-shift, snap)
- a short component inventory
- 2–3 screen layouts

## Suggested sections

See [`templates/design-system.md`](../templates/design-system.md).

## Lock decisions explicitly

After exploring variants, write locked choices into the system or back into `soul.md`:

```md
## Locked direction
- Name: Sketch to Color
- Navigation: one-screen voice-controlled (not scroll-first)
- Motion: GSAP stage transitions
- 3D: Three.js isometric stage (optional)
```

Agents respect what you lock. Ambiguity produces generic UI.
