#!/usr/bin/env bash
# Install the ai-design-framework skill.
#
#   ./install.sh                      # global install for every tool found on this machine
#   ./install.sh antigravity claude   # only these tools
#   ./install.sh --project /path/app  # add to a project (.agent/skills + .claude/skills) for Antigravity / Claude Code
#   ./install.sh --rules [tools...]   # also add the global "visual-first" rule to each tool's rules file
#
# Tools: antigravity, claude, codex, cursor
set -euo pipefail

REPO="$(cd "$(dirname "$0")" && pwd)"
SRC="$REPO/skills/ai-design-framework"
RULE="$REPO/rules/visual-first.md"
NAME="ai-design-framework"

if [[ ! -f "$SRC/SKILL.md" ]]; then
  echo "skill not found at $SRC" >&2
  exit 1
fi

copy() {
  local dest="$1"
  mkdir -p "$(dirname "$dest")"
  rm -rf "$dest"
  cp -R "$SRC" "$dest"
  chmod +x "$dest"/scripts/*.mjs
  echo "✓ $dest"
}

# Insert or replace the visual-first rule between markers in a rules file (idempotent).
add_rule() {
  local file="$1" skill_dir="$2"
  mkdir -p "$(dirname "$file")"
  touch "$file"
  node -e '
    const fs = require("fs");
    const [file, rule, dir] = process.argv.slice(1);
    const start = "<!-- ai-design-framework:visual-first:start -->";
    const end = "<!-- ai-design-framework:visual-first:end -->";
    const block = `${start}\n${fs.readFileSync(rule, "utf8").replaceAll("{{SKILL_DIR}}", dir).trim()}\n${end}`;
    let s = fs.readFileSync(file, "utf8");
    const re = new RegExp(start + "[\\s\\S]*?" + end);
    s = re.test(s) ? s.replace(re, block) : (s.trim() ? s.trimEnd() + "\n\n" : "") + block + "\n";
    fs.writeFileSync(file, s);
  ' "$file" "$RULE" "$skill_dir"
  echo "✓ rule → $file"
}

if [[ "${1:-}" == "--project" ]]; then
  PROJECT="${2:?usage: ./install.sh --project /path/to/app}"
  copy "$PROJECT/.agent/skills/$NAME"     # Antigravity workspace skill
  copy "$PROJECT/.claude/skills/$NAME"    # Claude Code project skill
  if [[ "${3:-}" == "--rules" ]]; then
    add_rule "$PROJECT/.agent/rules/visual-first.md" ".agent/skills/$NAME"
  fi
  exit 0
fi

WITH_RULES=0
if [[ "${1:-}" == "--rules" ]]; then
  WITH_RULES=1
  shift
fi

rules_file_for() {
  case "$1" in
    antigravity) echo "$HOME/.gemini/GEMINI.md" ;;   # global rules for Antigravity + Gemini CLI
    claude)      echo "$HOME/.claude/CLAUDE.md" ;;
    codex)       echo "$HOME/.codex/AGENTS.md" ;;
    cursor)      echo "" ;;                          # Cursor global rules live in Settings → Rules (paste rules/visual-first.md)
  esac
}

dir_for() {
  case "$1" in
    # Antigravity reads ~/.gemini/antigravity/skills (often a symlink to ~/.gemini/config/skills)
    antigravity) echo "$HOME/.gemini/antigravity/skills/$NAME" ;;
    claude)      echo "$HOME/.claude/skills/$NAME" ;;
    codex)       echo "$HOME/.codex/skills/$NAME" ;;
    cursor)      echo "$HOME/.cursor/skills/$NAME" ;;
    *) echo "unknown tool: $1 (use antigravity, claude, codex, cursor)" >&2; return 1 ;;
  esac
}

home_for() {
  case "$1" in
    antigravity) echo "$HOME/.gemini" ;;
    claude)      echo "$HOME/.claude" ;;
    codex)       echo "$HOME/.codex" ;;
    cursor)      echo "$HOME/.cursor" ;;
  esac
}

TOOLS=("$@")
if [[ ${#TOOLS[@]} -eq 0 ]]; then
  for t in antigravity claude codex cursor; do
    [[ -d "$(home_for "$t")" ]] && TOOLS+=("$t")
  done
fi

if [[ ${#TOOLS[@]} -eq 0 ]]; then
  echo "No supported tool found. Pass one explicitly: ./install.sh claude" >&2
  exit 1
fi

for t in "${TOOLS[@]}"; do
  dest="$(dir_for "$t")"
  # Follow a symlinked skills dir (Antigravity) so we write to the real folder.
  parent="$(dirname "$dest")"
  if [[ -L "$parent" ]]; then
    parent="$(cd "$parent" && pwd -P)"
    dest="$parent/$NAME"
  fi
  copy "$dest"
  if [[ $WITH_RULES -eq 1 ]]; then
    rf="$(rules_file_for "$t")"
    if [[ -n "$rf" ]]; then add_rule "$rf" "$dest"; else echo "• $t: paste rules/visual-first.md into Settings → Rules"; fi
  fi
done

echo
echo "Done. Start a new session in your tool, then run: /ai-design-framework <pinterest links> brief: \"...\""
