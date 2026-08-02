# Design System — Voice AI Factory

## Locked direction
- Name: Sketch to Color
- One-line: Minimal paper factory that gains color as the workflow becomes production-ready

## Color
| Token | Value | Usage |
|-------|-------|-------|
| `--bg-paper` | `#F7F5F1` | Initial sketch ground |
| `--ink` | `#1A1A1A` | Lines, type |
| `--blueprint` | soft blue | Blueprint stage |
| `--assemble` | orange | Assembly / active build |
| `--ready` | green | Production-ready status |

## Typography
| Role | Notes |
|------|-------|
| Display | Expressive, not Inter/Roboto default |
| Body | Calm, readable |
| Meta | Small labels on stations / HUD |

## Motion
| Verb | Feel |
|------|------|
| Enter | Quiet paper reveal |
| Stage shift | Waveform moves center → side → center |
| Snap | Modular blocks assemble |

## Components
- Persistent voice waveform
- Ghost/sketch panels → filled panels
- Isometric stage graphic per state
- Readiness score / risk radar (testing)
- Calendly CTA (launch)

## Key states
1. `idle` — centered waveform, blank sketch
2. `listening` — transcript / intake
3. `blueprint` — soft blue map
4. `assembly` — orange blocks
5. `testing` — green readiness
6. `ready` — centered CTA

## Do / Don't
- Do: one composition, listen first
- Don't: purple glow, robot mascots, scroll-first service lists
