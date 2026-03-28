#!/usr/bin/env bash
set -euo pipefail
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
for skill in "${SKILLS[@]}"; do rm -rf "$HOME/.claude/skills/$skill" "$HOME/.agents/skills/$skill"; done
