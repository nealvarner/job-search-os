#!/usr/bin/env bash
# job-search-os setup
# Walks through copying example files into data/, then prompts for config.

set -e

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_ROOT"

echo ""
echo "=== job-search-os setup ==="
echo ""

# 1. Verify Claude Code is available
if ! command -v claude &> /dev/null; then
  echo "⚠️  claude CLI not found. Install Claude Code first:"
  echo "    https://docs.anthropic.com/claude-code"
  exit 1
fi

# 2. Copy example templates into data/ if not already present
echo "📂 Copying example templates into data/..."
for f in lamp.csv resume.yaml me-on-a-page.md storybank.md engage-with.txt; do
  if [ ! -f "data/$f" ]; then
    cp "templates/$f.example" "data/$f"
    echo "   ✓ data/$f"
  else
    echo "   - data/$f (already exists, skipped)"
  fi
done

if [ ! -d "data/target-jds" ]; then
  mkdir -p data/target-jds
  echo "   ✓ data/target-jds/ (empty — add your target JDs here)"
fi

# 3. Config file
if [ ! -f "config.yaml" ]; then
  cp templates/config.yaml.example config.yaml
  echo "   ✓ config.yaml — EDIT THIS before continuing"
else
  echo "   - config.yaml (already exists, skipped)"
fi

# 4. Output and pipeline subdirs
mkdir -p data/output briefings pipeline
touch briefings/.gitkeep pipeline/.gitkeep

# 5. Done
echo ""
echo "✅ Setup scaffolding done."
echo ""
echo "Next steps:"
echo "  1. Edit config.yaml — set tracker, email, location"
echo "  2. Edit data/lamp.csv — your 40 target companies"
echo "  3. Edit data/resume.yaml — your experience"
echo "  4. Edit data/me-on-a-page.md — your forwardable snapshot"
echo "  5. Edit data/storybank.md — 8-10 STAR+Q stories"
echo "  6. Edit data/engage-with.txt — 20-30 LinkedIn accounts"
echo "  7. Add 5 target JDs to data/target-jds/"
echo "  8. Open Claude Code in this directory and run /onboarding"
echo ""
echo "Optional: ./scripts/install-cron.sh to wire up the morning briefing"
echo ""
echo "📖 Read docs/strategy.md and docs/cowork-operations.md before the first session."
echo ""
