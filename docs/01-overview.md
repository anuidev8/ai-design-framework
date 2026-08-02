# Overview

## Problem

AI coding agents can generate UI fast — but without a process, you get:

- generic “AI purple” landings
- no shared product truth between humans and agents
- endless one-off prompts that don’t compound

## Solution

A **portable artifact chain** that any agent (Cursor, Claude Code, Codex, etc.) can follow:

```
soul.md  →  research  →  moodboards  →  design-system  →  variants  →  specs  →  prototype
```

Each step produces a file. The next step only starts when that file exists.

## Design principles (from practice + the YC talk)

Watch: [YC Head of Design — How To Design With AI](https://www.youtube.com/watch?v=VbqaL_eHhKY)

| Principle | Practice |
|-----------|----------|
| Imagination > tooling | Structure taste decisions early (`soul` + mood boards) |
| One brain file | `soul.md` is the shared source of truth |
| Explore then lock | One-shot many variants; pin one direction |
| Agents implement | Humans choose direction; agents write code |
| Disposable exploration | Galleries and drafts can be deleted after lock |

## When to use this framework

- New landing pages or product surfaces
- Rebrand / visual direction exploration
- Feature UX that needs a clear emotional outcome
- Teaching teams how to brief AI agents for design

## When not to use it

- Tiny copy tweaks on an existing design system
- Pure backend / infra work
- Full multi-brand design systems from scratch (use this for *directions*, then hand off to a design system team)

## Next

→ [Workflow steps](02-workflow-steps.md)
