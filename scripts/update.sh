#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="$HOME/.agents/skills/benchmark"

cd "$ROOT_DIR"

if [ ! -d ".git" ]; then
  echo "error: this directory is not a git repository" >&2
  exit 1
fi

git pull --ff-only

mkdir -p "$TARGET_DIR"
cp "$ROOT_DIR/SKILL.md" "$TARGET_DIR/SKILL.md"

echo "benchmark skill updated:"
echo "$TARGET_DIR/SKILL.md"
