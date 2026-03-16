# MCP Setup Guide

> **Model Context Protocol tools for CFA Marketing Agents**
> These tools give agents live access to the web, browser automation, and filesystem.

---

## What MCP Tools We Use

| Tool | Purpose | Agent |
|------|---------|-------|
| **Perplexity MCP** | Live web research, competitor analysis, trend spotting | Research Intel |
| **Playwright MCP** | Browser automation, screenshot competitor pages | Research Intel |
| **Filesystem MCP** | Read/write project files across agent sessions | All agents |

---

## Installation

### Prerequisites
- Node.js 18+ installed
- npm or npx available
- Claude Desktop or Claude Code running

### Install MCP Servers

```bash
# Run the setup script
chmod +x scripts/setup-mcp.sh
./scripts/setup-mcp.sh
```

Or install individually:

```bash
# Perplexity MCP
npm install -g @perplexity/mcp-server

# Playwright MCP
npm install -g @playwright/mcp-server

# Filesystem MCP
npm install -g @modelcontextprotocol/server-filesystem
```

---

## Configuration

MCP servers are configured in `mcp/mcp_servers.json`.
Copy this to your Claude Desktop config location:

**macOS:** `~/Library/Application Support/Claude/claude_desktop_config.json`
**Windows:** `%APPDATA%\Claude\claude_desktop_config.json`

```bash
# macOS shortcut
cp mcp/mcp_servers.json ~/Library/Application\ Support/Claude/claude_desktop_config.json
```

---

## API Keys Required

| Service | Where to Get | Config Key |
|---------|-------------|------------|
| Perplexity | perplexity.ai/settings/api | `PERPLEXITY_API_KEY` |

Set in your shell profile:
```bash
export PERPLEXITY_API_KEY="your-key-here"
```

---

## Verifying Setup

After installation, test each tool in Claude:

```
"Use Perplexity to search for 'AI tools for painting contractors'"
"Use Playwright to take a screenshot of jobber.com"
"Use Filesystem to list files in the cfa-marketing-agents directory"
```

---

## Troubleshooting

### MCP server not connecting
1. Restart Claude Desktop after config changes
2. Check logs: `~/Library/Logs/Claude/mcp*.log`
3. Verify API keys are set in environment

### Perplexity rate limits
- Free tier: 5 req/min
- Paid tier: Higher limits
- Research Intel should batch research requests

### Playwright browser issues
```bash
# Install browser binaries
npx playwright install chromium
```

---

## Usage in Agents

### Research Intel — Perplexity
```
"Search for recent articles about AI tools for contractors"
"Find the top 5 competitors of Command-F Agency and summarize their positioning"
"What are contractors saying about AI on Reddit this week?"
```

### Research Intel — Playwright
```
"Take a screenshot of [competitor]'s homepage"
"Open the Meta Ad Library and find ads from [competitor]"
"Check what [competitor]'s current pricing page shows"
```

### All Agents — Filesystem
```
"Read the current campaign brief from shared/campaign-briefs/"
"Write this content to the-lake/processed/linkedin-post-2026-03-16.md"
"List all files in shared/agent-comms/"
```

---

*MCP Setup Guide | CFA Marketing Agents | Command-F Agency*
