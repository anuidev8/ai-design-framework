# Contributing

Thanks for improving the AI Design Framework.

## Ways to contribute

- New **examples** under `examples/` (sanitized, no client secrets)
- Better **prompts** under `prompts/`
- Clearer **docs** under `docs/`
- Template fixes under `templates/`

## Rules

1. Keep artifacts portable: `soul.md`, `moodboards.json`, `design-system.md`, specs JSON.
2. Prefer small, high-signal examples over huge dumps of screenshots.
3. Link third-party inspiration; do not redistribute copyrighted assets.
4. Credit the [YC Design Review video](https://www.youtube.com/watch?v=VbqaL_eHhKY) as inspiration when relevant — without implying affiliation.

## PR checklist

- [ ] Docs render correctly (relative links work)
- [ ] Example is runnable as a mental model (even without code)
- [ ] No `.env`, keys, or private URLs
- [ ] License/attribution notes updated if you add new assets

## Keeping the skill in sync

`skills/ai-design-framework/` must work on its own once copied into a tool's skills folder, so it carries its own copies of:

- `templates/soul.md`, `templates/specs/feature-specs.json`
- `prompts/master-orchestrator.md`, `prompts/one-shot-variants.md` (as `references/`)

If you edit those root files, copy them into the skill folder in the same PR.
