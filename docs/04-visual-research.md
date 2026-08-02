# Visual research

## Goal

Collect a **small, high-signal** set of references that match `soul.md` — not a dump of pretty UIs.

## Path A — Pinterest (default for product workflow)

1. Search with queries derived from soul (metaphor + medium + mood).
2. Open 6–10 pins; screenshot each.
3. Record metadata in `pins/sources.json`.

Template: [`templates/pins/sources.json`](../templates/pins/sources.json)

```json
{
  "file": "pin-blueprint-factory.png",
  "query": "paper blueprint ui factory",
  "sourceType": "pinterest-pin",
  "pinUrl": "https://www.pinterest.com/pin/...",
  "title": "Blueprint dashboard",
  "reason": "Matches soul: modular assembly + paper sketch energy"
}
```

## Path B — Topic inspiration pack (design-research style)

Create:

```
public/design-inspiration/<topic-slug>/
  refs/          # 3–6 screenshots
  references/    # curated link list
  patterns/      # layout / motion / visual + keep/change/avoid
  direction/     # one-paragraph direction
  checklists/    # 10–20 implementation rules
```

Good sources: real product galleries, Apple HIG, pattern articles. Prefer shipped UIs over pure concept art.

## Quality bar

| Good | Bad |
|------|-----|
| 6–15 refs with reasons | 80 untagged screenshots |
| Mix of layout + interaction | Only color palettes |
| Tied to emotional outcome | “Looks cool” with no soul link |
| License-aware notes | Hotlinking gated assets |

## Next

Cluster into mood boards → [05-moodboards.md](05-moodboards.md)
