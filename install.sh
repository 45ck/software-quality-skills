#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
install_skill() {
  local skill="$1"
  mkdir -p "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"
  cp "$SCRIPT_DIR/.claude/skills/$skill/SKILL.md" "$HOME/.claude/skills/$skill/SKILL.md"
  cp "$SCRIPT_DIR/.agents/skills/$skill/SKILL.md" "$HOME/.agents/skills/$skill/SKILL.md"
}
SKILLS=(
  maintainability-reviewer
  process-quality-checker
  product-vs-process-quality-splitter
  quality-attribute-model-builder
  quality-evidence-summarizer
  quality-goal-scorer
  quality-risk-register-builder
  quality-weighting-reviewer
  reliability-quality-reviewer
  technical-debt-auditor
  usability-quality-reviewer
)
for skill in "${SKILLS[@]}"; do install_skill "$skill"; done
