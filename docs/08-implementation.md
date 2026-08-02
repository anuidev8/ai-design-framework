# Implementation

## Inputs (required)

1. `soul.md` (updated with locked direction)
2. `design-system.md`
3. Specs JSON (`states`, transitions, CTA)
4. Build prompt: [`prompts/build-prototype.md`](../prompts/build-prototype.md)

## Order of work

1. One composition for the first viewport (story first, not a dashboard of features)
2. Interaction states before decorative polish
3. Motion that explains hierarchy (stage changes), not noise
4. Responsive pass (mobile must hold the same story)

## Agent brief pattern

```text
Build using soul.md as source of truth.
Locked direction: [NAME].
Follow design-system.md tokens.
Implement states from specs/*.json.
Do not invent a new visual theme.
```

## Definition of done

- First viewport communicates brand + one headline + one CTA group + dominant interaction
- States match the spec machine
- Locked direction is recognizable without reading the docs
- Gallery / research assets are not shipped as production UI
