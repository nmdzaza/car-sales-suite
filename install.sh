#!/bin/bash
set -e

PLUGIN_DIR="$HOME/.claude/plugins/marketplaces/claude-plugins-official/plugins/car-sales-suite"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Car Sales Suite plugin..."

mkdir -p "$PLUGIN_DIR"
cp -r "$SCRIPT_DIR/.claude-plugin" "$PLUGIN_DIR/"
cp -r "$SCRIPT_DIR/skills" "$PLUGIN_DIR/"

echo ""
echo "✅ Car Sales Suite installed."
echo ""
echo "Next: open Claude Code and run /plugin install car-sales-suite@claude-plugin-directory"
echo "      or just start a new session — Claude will detect and load the skills automatically."
