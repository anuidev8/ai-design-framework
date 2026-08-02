# Publishing this framework on GitHub

Guidelines to turn `ai-design-framework/` into a clean public repository.

---

## 1. Decide: standalone repo (recommended)

This folder is designed to live as its **own** GitHub repo, not nested forever inside a product app.

```bash
# From this folder
cd ai-design-framework

# Init git if needed
git init
git add .
git commit -m "$(cat <<'EOF'
Initial release of the AI Design Framework.

Document the soul.md → research → mood boards → one-shot → prototype workflow,
with templates, prompts, and a Voice AI Factory example.
EOF
)"
```

Create the remote (replace `YOUR_USER`):

```bash
gh repo create YOUR_USER/ai-design-framework --public \
  --source=. \
  --remote=origin \
  --description "Agentic UI/UX workflow: soul.md → mood boards → one-shot variants → prototype" \
  --push
```

Or without `gh`:

1. Create an empty repo on GitHub (no README).
2. `git remote add origin git@github.com:YOUR_USER/ai-design-framework.git`
3. `git branch -M main`
4. `git push -u origin main`

---

## 2. Before you push — checklist

- [ ] Replace any personal paths, client names, or private URLs in examples
- [ ] Keep the YouTube reference as a link only (do not redistribute video assets)
- [ ] Confirm screenshots in `examples/` are yours or clearly marked as internal reference
- [ ] Set a clear license (`LICENSE` is MIT by default)
- [ ] Fill GitHub **About**: description, website (optional), topics

Suggested topics:

```
ai-design
ui-ux
agentic-workflow
soul-md
design-system
cursor
prompt-engineering
```

---

## 3. README quality bar (GitHub home page)

Your public README should answer in under 30 seconds:

1. What is this?
2. Who is it for?
3. How do I start?
4. Where is the example?
5. What video/inspiration is it based on?

The root `README.md` already follows that pattern. Keep it short; put depth in `docs/`.

---

## 4. Suggested GitHub extras

Optional but polished:

| File | Purpose |
|------|---------|
| `.github/ISSUE_TEMPLATE/feature_request.md` | Collect workflow improvements |
| `.github/PULL_REQUEST_TEMPLATE.md` | Docs/templates PRs |
| `CONTRIBUTING.md` | How to add examples or prompts |
| GitHub Discussions | Share soul.md / gallery experiments |

Release tags:

```bash
git tag -a v0.1.0 -m "v0.1.0 — first public framework"
git push origin v0.1.0
gh release create v0.1.0 --title "v0.1.0" --notes "Initial public release."
```

---

## 5. Attribution for the reference video

Always link the source; do not claim YC endorsement.

Suggested blurb (already in README):

> Inspired by [YC's Head of Design Shows You How To Design With AI](https://www.youtube.com/watch?v=VbqaL_eHhKY) (Eve Bouffard). Independent open workflow — not affiliated with Y Combinator.

---

## 6. Split from a monorepo (if this folder lives inside another project)

If you built this inside `agentic_uis` (or similar):

```bash
# Option A — copy out
cp -R ai-design-framework ~/code/ai-design-framework
cd ~/code/ai-design-framework
git init && # … commit + gh repo create

# Option B — git subtree split (keeps history of this folder)
git subtree split -P ai-design-framework -b framework-only
mkdir -p /tmp/ai-design-framework && cd /tmp/ai-design-framework
git init
git pull /path/to/agentic_uis framework-only
# then create remote and push
```

---

## 7. After publish — promote

- Pin the repo on your GitHub profile
- Link the YC video + your example gallery in the repo description
- Add a short Loom/demo: “soul.md → 8 variants → locked prototype”
- Invite issues for new examples (SaaS dashboard, mobile onboarding, etc.)

---

## 8. What not to publish

- Private client `soul.md` files with confidential strategy
- API keys, Calendly private links, `.env`
- Scraped Dribbble/Pinterest assets if license is unclear (keep URLs + notes instead)
- Unattributed screenshots of third-party products as if they were yours
