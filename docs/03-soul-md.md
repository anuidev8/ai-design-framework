# `soul.md` — the project brain

## Role

`soul.md` is the **shared source of truth** for humans and AI agents.

This matches a core idea from [YC’s Design Review with Eve Bouffard](https://www.youtube.com/watch?v=VbqaL_eHhKY): put the product’s intent, taste, and constraints in one file agents can follow end-to-end.

## Rules

1. **Short and specific** — prefer concrete constraints over slogans.
2. **Portable** — copy the same file into any repo.
3. **Emotional + functional** — say how users should *feel*, not only what screens exist.
4. **Non-goals matter** — stop agents from inventing scope.
5. **Update when decisions lock** — after you pick a visual direction, add it under constraints.

## Minimum sections

| Section | Question it answers |
|---------|---------------------|
| Purpose | Why does this exist? |
| Audience | Who is it for, and what’s their mindset? |
| Emotional outcome | How should they feel after using it? |
| Tone | What voice / visual attitude? |
| Constraints | Business, tech, brand, accessibility |
| UI principles | Rules an agent must not violate |
| Tech context | Stack and delivery limits |
| Non-goals | What we are *not* building |

## Anti-patterns

- Pasting a full PRD into soul (too long → agents lose the plot)
- Vague lines like “modern and clean”
- Missing audience mindset (fear, overwhelm, curiosity)
- No interaction model (scroll-first vs one-screen vs voice-first)

## Template

Copy [`templates/soul.md`](../templates/soul.md).

## Example

See the condensed brain in [`examples/voice-ai-factory/soul.md`](../examples/voice-ai-factory/soul.md).
