#!/usr/bin/env bash
# Install the ai-design-framework skill.
#
#   ./install.sh                      # global install for every tool found on this machine
#   ./install.sh antigravity claude   # only these tools
#   ./install.sh --project /path/app  # add to a project (.agent/skills + .claude/skills) for Antigravity / Claude Code
#
# Tools: antigravity, claude, codex, cursor
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)/skills/ai-design-framework"
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

if [[ "${1:-}" == "--project" ]]; then
  PROJECT="${2:?usage: ./install.sh --project /path/to/app}"
  copy "$PROJECT/.agent/skills/$NAME"     # Antigravity workspace skill
  copy "$PROJECT/.claude/skills/$NAME"    # Claude Code project skill
  exit 0
fi

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
done

echo
echo "Done. Start a new session in your tool, then run: /ai-design-framework <pinterest links> brief: \"...\""
