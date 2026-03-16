#!/bin/bash

# CFA Marketing Agents — tmux Session Launcher
# Sets up a multi-pane tmux session with one window per agent

SESSION="cfa-agents"
PROJECT_DIR="$HOME/Projects/cfa-marketing-agents"

# Kill existing session if running
tmux kill-session -t "$SESSION" 2>/dev/null || true

echo "Launching CFA Marketing Agent tmux session..."

# Create new session with Orchestrator window
tmux new-session -d -s "$SESSION" -n "orchestrator" -x 220 -y 50

# Set working directory for all windows
tmux send-keys -t "$SESSION:orchestrator" "cd $PROJECT_DIR" Enter
tmux send-keys -t "$SESSION:orchestrator" "echo '=== ORCHESTRATOR ===' && cat orchestrator/SKILL.md | head -30" Enter

# Content Writer window
tmux new-window -t "$SESSION" -n "content-writer"
tmux send-keys -t "$SESSION:content-writer" "cd $PROJECT_DIR" Enter
tmux send-keys -t "$SESSION:content-writer" "echo '=== CONTENT WRITER ===' && cat agents/content-writer/SKILL.md | head -30" Enter

# SEO Analyst window
tmux new-window -t "$SESSION" -n "seo-analyst"
tmux send-keys -t "$SESSION:seo-analyst" "cd $PROJECT_DIR" Enter
tmux send-keys -t "$SESSION:seo-analyst" "echo '=== SEO ANALYST ===' && cat agents/seo-analyst/SKILL.md | head -30" Enter

# Ads Manager window
tmux new-window -t "$SESSION" -n "ads-manager"
tmux send-keys -t "$SESSION:ads-manager" "cd $PROJECT_DIR" Enter
tmux send-keys -t "$SESSION:ads-manager" "echo '=== ADS MANAGER ===' && cat agents/ads-manager/SKILL.md | head -30" Enter

# Brand Strategist window
tmux new-window -t "$SESSION" -n "brand-strategist"
tmux send-keys -t "$SESSION:brand-strategist" "cd $PROJECT_DIR" Enter
tmux send-keys -t "$SESSION:brand-strategist" "echo '=== BRAND STRATEGIST ===' && cat agents/brand-strategist/SKILL.md | head -30" Enter

# Research Intel window
tmux new-window -t "$SESSION" -n "research-intel"
tmux send-keys -t "$SESSION:research-intel" "cd $PROJECT_DIR" Enter
tmux send-keys -t "$SESSION:research-intel" "echo '=== RESEARCH INTEL ===' && cat agents/research-intel/SKILL.md | head -30" Enter

# The Lake monitor window (split pane for file watching)
tmux new-window -t "$SESSION" -n "the-lake"
tmux send-keys -t "$SESSION:the-lake" "cd $PROJECT_DIR" Enter
tmux send-keys -t "$SESSION:the-lake" "echo '=== THE LAKE — Asset Database ===' && ls -la the-lake/" Enter
tmux split-window -t "$SESSION:the-lake" -h
tmux send-keys -t "$SESSION:the-lake" "cd $PROJECT_DIR && echo '=== Agent Comms ===' && ls -la shared/agent-comms/" Enter

# Return focus to orchestrator
tmux select-window -t "$SESSION:orchestrator"

echo ""
echo "=================================="
echo " CFA Agent Session Running"
echo "=================================="
echo ""
echo "Windows:"
echo "  0: orchestrator     — Central coordinator"
echo "  1: content-writer   — HAIL + CCN content"
echo "  2: seo-analyst      — Keywords + rankings"
echo "  3: ads-manager      — Paid campaigns"
echo "  4: brand-strategist — Voice enforcement"
echo "  5: research-intel   — Market research"
echo "  6: the-lake         — Asset database + comms"
echo ""
echo "Attach with:"
echo "  tmux attach -t $SESSION"
echo ""
echo "Navigate windows:"
echo "  Ctrl+b then 0-6    — Jump to window"
echo "  Ctrl+b then n/p    — Next/previous window"
echo ""

# Attach to session
tmux attach -t "$SESSION"
