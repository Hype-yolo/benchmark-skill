#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  "SKILL.md"
  "README.md"
  "LICENSE"
  "docs/快速开始.md"
  "docs/诊断模式说明.md"
  "docs/产出模式说明.md"
  "docs/16项对标检查表.md"
  "docs/常见问题.md"
  "examples/诊断模式/原文稿.md"
  "examples/诊断模式/仿写稿.md"
  "examples/诊断模式/输出示例.md"
  "examples/产出模式/原文稿.md"
  "examples/产出模式/需求回答.md"
  "examples/产出模式/最终仿写稿.md"
  "知识库/对标改写方法论.md"
  "知识库/文风诊断案例库.md"
  "知识库/常见仿写失败类型.md"
  "知识库/半文言与白话夹文言标准.md"
  "知识库/爆款哲学文稿结构库.md"
)

for file in "${required_files[@]}"; do
  if [ ! -f "$ROOT_DIR/$file" ]; then
    echo "missing file: $file" >&2
    exit 1
  fi
done

grep -q '^name: benchmark$' "$ROOT_DIR/SKILL.md"
grep -q '/benchmark' "$ROOT_DIR/SKILL.md"
grep -q 'CC BY-NC 4.0' "$ROOT_DIR/LICENSE"
grep -q 'Copyright (c) 2026 Hype' "$ROOT_DIR/LICENSE"

if grep -R '/value\|/hype-editor' "$ROOT_DIR/SKILL.md" >/dev/null 2>&1; then
  echo "private local skill reference found in SKILL.md" >&2
  exit 1
fi

echo "benchmark-skill check passed"

