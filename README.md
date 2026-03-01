# Car Sales Suite — Claude Plugin

A complete AI sales system for car dealership associates. Runs entirely inside Claude Desktop — no separate app, no CRM subscription, no setup complexity.

## What's Inside

| Skill | What It Does |
|---|---|
| **dealer-onboarding** | One-time setup — saves your profile so every session is pre-personalized |
| **car-sales** | Works paid, warm, and dead leads — builds outreach, logs pipeline, sends iMessages |
| **buyer-leads** | Finds people actively looking to buy — Reddit, Facebook, Craigslist, Twitter |
| **conquest-leads** | Finds private sellers to flip into trade-in/upgrade deals |

## Install

### One-command install (Claude Code)
```bash
/plugin install car-sales-suite@claude-plugin-directory
```

### Manual install
```bash
git clone https://github.com/nmdzaza/car-sales-suite
mkdir -p ~/.claude/plugins/marketplaces/claude-plugins-official/plugins/car-sales-suite
cp -r car-sales-suite/.claude-plugin ~/.claude/plugins/marketplaces/claude-plugins-official/plugins/car-sales-suite/
cp -r car-sales-suite/skills ~/.claude/plugins/marketplaces/claude-plugins-official/plugins/car-sales-suite/
```

Then in Claude Code, run `/plugin install car-sales-suite@claude-plugin-directory`

## First-Time Setup

On first run, Claude will automatically start **dealer-onboarding** and ask 8 quick questions:

1. Your name
2. Dealership name
3. Your cell number
4. Your email
5. Inventory URL
6. Financing partners
7. Trade-in tool link
8. Your city/market

This saves to `~/car-sales-leads/dealer-profile.md` — every other skill loads it automatically from then on.

## Requirements

- [Claude Desktop](https://claude.ai/download) with Claude Pro or Max
- Mac (for iMessage sending via MCP)
- Desktop Commander MCP (for file read/write)
- Gmail MCP (optional — for email drafts)

## Pricing

Contact [NMD Cars](mailto:camjohn816@gmail.com) for dealership licensing and exclusive lead packages.
