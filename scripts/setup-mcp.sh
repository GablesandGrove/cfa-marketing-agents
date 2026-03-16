#!/bin/bash

# CFA Marketing Agents — MCP Setup Script
# Installs all required MCP servers for the agent system

set -e

echo "=================================="
echo " CFA Marketing Agents — MCP Setup"
echo "=================================="
echo ""

# Check prerequisites
echo "Checking prerequisites..."

if ! command -v node &> /dev/null; then
    echo "ERROR: Node.js is not installed."
    echo "Install it from: https://nodejs.org"
    exit 1
fi

if ! command -v npm &> /dev/null; then
    echo "ERROR: npm is not installed."
    exit 1
fi

NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 18 ]; then
    echo "ERROR: Node.js 18+ required. Current: $(node -v)"
    exit 1
fi

echo "Node.js $(node -v) ✓"
echo "npm $(npm -v) ✓"
echo ""

# Check for Perplexity API key
if [ -z "$PERPLEXITY_API_KEY" ]; then
    echo "WARNING: PERPLEXITY_API_KEY not set in environment."
    echo "Add to your shell profile:"
    echo "  export PERPLEXITY_API_KEY=\"your-key-here\""
    echo "Get your key at: https://www.perplexity.ai/settings/api"
    echo ""
fi

# Install MCP servers
echo "Installing MCP servers..."
echo ""

echo "[1/3] Installing Perplexity MCP..."
npm install -g @perplexity/mcp-server 2>/dev/null || {
    echo "  Note: Perplexity MCP uses npx (no global install needed)"
}

echo "[2/3] Installing Playwright MCP..."
npm install -g @playwright/mcp-server 2>/dev/null || {
    echo "  Note: Playwright MCP uses npx (no global install needed)"
}
npx playwright install chromium --quiet 2>/dev/null || echo "  Playwright browsers: will install on first use"

echo "[3/3] Installing Filesystem MCP..."
npm install -g @modelcontextprotocol/server-filesystem 2>/dev/null || {
    echo "  Note: Filesystem MCP uses npx (no global install needed)"
}

echo ""
echo "=================================="
echo " Installing Claude Desktop Config"
echo "=================================="
echo ""

CLAUDE_CONFIG_DIR="$HOME/Library/Application Support/Claude"
CLAUDE_CONFIG_FILE="$CLAUDE_CONFIG_DIR/claude_desktop_config.json"
MCP_CONFIG="$(dirname "$0")/../mcp/mcp_servers.json"

if [ -d "$CLAUDE_CONFIG_DIR" ]; then
    if [ -f "$CLAUDE_CONFIG_FILE" ]; then
        echo "Backing up existing config to claude_desktop_config.backup.json"
        cp "$CLAUDE_CONFIG_FILE" "$CLAUDE_CONFIG_DIR/claude_desktop_config.backup.json"
    fi
    cp "$MCP_CONFIG" "$CLAUDE_CONFIG_FILE"
    echo "Config installed to: $CLAUDE_CONFIG_FILE ✓"
else
    echo "Claude Desktop config directory not found."
    echo "Manually copy mcp/mcp_servers.json to:"
    echo "  macOS: ~/Library/Application Support/Claude/claude_desktop_config.json"
    echo "  Windows: %APPDATA%\\Claude\\claude_desktop_config.json"
fi

echo ""
echo "=================================="
echo " Setup Complete"
echo "=================================="
echo ""
echo "Next steps:"
echo "1. Restart Claude Desktop"
echo "2. Verify tools are active (look for MCP indicator in Claude)"
echo "3. Test with: 'Use Perplexity to search for AI tools for contractors'"
echo ""
echo "If tools don't appear, check logs:"
echo "  ~/Library/Logs/Claude/mcp*.log"
echo ""
