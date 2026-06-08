#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="$ROOT_DIR/dist"
ARCHIVE="$OUT_DIR/benchmark-skill.zip"

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

cd "$ROOT_DIR"
zip -r "$ARCHIVE" \
  SKILL.md README.md LICENSE docs examples 知识库 scripts \
  -x "*/.DS_Store" "dist/*" ".git/*"

echo "built $ARCHIVE"

