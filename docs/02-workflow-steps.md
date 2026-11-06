# Workflow steps

Run these in order. Skip only when an artifact already exists and is still valid.

---

## Step 1 — Project brain (`soul.md`)

Write a short, specific product brain:

- purpose
- audience + mindset
- emotional outcome
- tone
- constraints
- UI principles
- tech context
- non-goals

Template: [`templates/soul.md`](../templates/soul.md)  
Guide: [03-soul-md.md](03-soul-md.md)

**Done when:** a stranger (or an agent) can design the right product from this file alone.

---

## Step 2 — Visual research

Collect a **small** set of references (6–15):

- Default path: Pinterest pins → screenshots + `pins/sources.json`
- Alternate path: Dribbble / galleries / HIG → `public/design-inspiration/<topic>/`

Guide: [04-visual-research.md](04-visual-research.md)

**Done when:** every reference has `why_relevant` tied to `soul.md`.

---

## Step 3 — Mood boards

Cluster references into **2–3 directions**. Score each against soul. Discard weak pins.

Output: `moodboards.json` + short notes.

Guide: [05-moodboards.md](05-moodboards.md)  
Rating rubric (v2): [`skills/ai-design-framework/references/rating-rubric.md`](../skills/ai-design-framework/references/rating-rubric.md)

**Done when:** you can name a primary direction without averaging everything together.

---

## Step 4 — Design system (practical)

From the **primary** mood board, write implementation-oriented tokens:

- color, type, spacing, radius, motion
- component list
- 2–3 key screen layouts

Template: [`templates/design-system.md`](../templates/design-system.md)  
Guide: [06-design-system.md](06-design-system.md)

**Done when:** an agent can style components without inventing a new aesthetic.

---

## Step 5 — One-shot variants + gallery

Ask the agent for **6–8** distinct landing/product directions in one prompt. Build a disposable gallery to compare and pin favorites.

Prompt: [`prompts/one-shot-variants.md`](../prompts/one-shot-variants.md)  
Guide: [07-one-shot-variants.md](07-one-shot-variants.md)

**Done when:** one direction is locked (name it explicitly, e.g. “Sketch to Color”).

---

## Step 6 — Structured specs

Write JSON specs for behavior:

- screens / states
- transitions
- agent or voice behaviors
- CTAs and edge cases

Template: [`templates/specs/feature-specs.json`](../templates/specs/feature-specs.json)

**Done when:** implementation does not require guessing interaction states.

---

## Step 7 — Prototype

Implement the locked direction using soul + design system + specs.

Prompt: [`prompts/build-prototype.md`](../prompts/build-prototype.md)  
Guide: [08-implementation.md](08-implementation.md)

**Done when:** the first viewport proves the story (not a generic service list).

---

## One-prompt mode

To run steps 1–7 in a single agent session, use [`prompts/master-orchestrator.md`](../prompts/master-orchestrator.md).
