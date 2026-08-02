# One-shot variants + gallery

## Goal

Generate **many directions in one agent pass**, then **choose** — inspired by the “one-shot = many website variations” idea in [the YC Design Review talk](https://www.youtube.com/watch?v=VbqaL_eHhKY).

## How

1. Feed `soul.md` + mood boards into [`prompts/one-shot-variants.md`](../prompts/one-shot-variants.md).
2. Ask for 6–8 distinct concepts (layout + interaction + metaphor must differ).
3. Render a **disposable gallery** (HTML or image grid) with pin/favorite.
4. Lock **one** direction by name.

## Gallery rules

- Disposable — delete after the real prototype starts
- Compare apples to apples (same CTA, same story beats)
- Pin ≠ polish — favorites can still be rough

## Example directions (Voice AI Factory)

From [`examples/voice-ai-factory/`](../examples/voice-ai-factory/):

1. Paper Blueprint Factory  
2. LEGO Assembly Lab  
3. Voice Command Center  
4. Factory Floor Journey  
5. Sketch to Color  
6. Production Readiness Lab  

Locked choice in that example: **Sketch to Color**.
