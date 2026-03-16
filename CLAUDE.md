# CFA Marketing Agents

> **Claude Code Context File**
> This file provides persistent context for Claude Code sessions.
> Read this first on every session.

---

## What This Project Is

A multi-agent marketing system for **Command-F Agency (CFA)** — an AI implementation agency targeting trades contractors. The agents work together to produce marketing content that promotes CFA's services.

**CFA Pivot:** From VA staffing → AI stack buildouts for trades contractors (painters, roofers, HVAC, etc.)

---

## The Mission

Promote Command-F Agency to trades contractors using the Dan Martell content operating system (HAIL, CCN, 5Ms, 70/20/10). Generate leads for AI assessments and stack buildouts.

---

## Brand Voice: "AI Gangsters"

- **Anti-consultant:** We mock the consulting playbook. We build, not advise.
- **Operator-credible:** We run a $2M+ painting company (Gables & Grove) on this stack.
- **Aggressive:** Direct. No weasel words. Challenge conventional wisdom.
- **Proof-first:** Every claim has receipts. Screenshots. Numbers. Before/after.

**Say this:** "We install the damn agents"
**Not this:** "We help optimize your operational efficiency"

---

## The ICP: "Frustrated Fred"

Trades contractor. $1M-$5M revenue. 5-20 employees. Drowning in admin.

| Dimension | Description |
|-----------|-------------|
| **Hopes** | Stop 60-hour weeks. Get proposals out faster. Stop losing leads. |
| **Dreams** | Build a sellable business. Work ON not IN. |
| **Fears** | AI is too complicated. His team won't use it. Another tool collecting dust. |
| **Blockers** | "I just need to hire another person." "Tech is for big companies." |

---

## The Unique Mechanism: 6 AI Agents

These are what CFA sells:

1. **Inbox Commander** — Email triage, auto-responses, scheduling
2. **Estimate Accelerator** — AI-assisted quoting, pricing lookups, proposal drafts
3. **Follow-Up Machine** — Automated lead nurture, quote follow-ups
4. **Job Site Documenter** — Photo tagging, daily logs, completion reports
5. **Schedule Optimizer** — Crew scheduling, route optimization
6. **Knowledge Keeper** — SOP management, AI Q&A for team

---

## Content Frameworks (Dan Martell)

### HAIL (Script Structure)
- **H**ook: The 3 C's — Context, Contrarian, Create Intrigue
- **A**natomy: Explain the concept clearly
- **I**llustration: Story, analogy, example
- **L**esson: Actionable takeaway (Results in Advance)

### CCN (Audience Tiers)
- **Core:** Die-hards, buyers, high context → Deep dives
- **Casual:** Aware but haven't bought → Education + entertainment
- **New:** Cold traffic, no context → Broad hooks, viral topics

### 5Ms (Workflow)
1. **Model** — Find what's working (70% proven topics)
2. **Map** — Plan content calendar, CCN distribution
3. **Make** — Create content using HAIL
4. **Multiply** — Distribute via The Lake (asset database)
5. **Measure** — Track V2F ratio (View-to-Follower)

### 70/20/10 (Ideation)
- 70% Model proven topics
- 20% Modify with new angles
- 10% Innovate (pure creativity)

### 10-80-10 (Human-AI Split)
- 10% Human vision (direction, taste)
- 80% AI execution (research, drafting, scheduling)
- 10% Human review (polish, approval)

---

## Project Structure

```
cfa-marketing-agents/
├── CLAUDE.md                    # This file (project context)
├── README.md                    # GitHub readme
├── orchestrator/
│   └── SKILL.md                 # Central coordinator
├── agents/
│   ├── content-writer/
│   │   └── SKILL.md             # HAIL + CCN content creation
│   ├── seo-analyst/
│   │   └── SKILL.md             # Keywords, rankings
│   ├── ads-manager/
│   │   └── SKILL.md             # Paid amplification
│   ├── brand-strategist/
│   │   └── SKILL.md             # Voice enforcement
│   └── research-intel/
│       └── SKILL.md             # MCP-powered research
├── shared/
│   ├── brand-guidelines/
│   │   ├── cfa-brand-context.md # Full brand bible
│   │   └── frustrated-fred.md   # ICP avatar
│   ├── campaign-briefs/         # Active campaigns
│   └── agent-comms/             # Inter-agent messaging
├── the-lake/                    # Central asset database
│   ├── raw-assets/
│   ├── processed/
│   └── by-platform/
├── workflows/
│   └── cfa-launch-30day.md      # 30-day campaign plan
├── mcp/
│   ├── README.md                # MCP setup guide
│   └── mcp_servers.json         # Server config
└── scripts/
    ├── setup-mcp.sh             # Install MCP tools
    └── tmux-setup.sh            # Launch agent sessions
```

---

## MCP Tools (When Available)

- **Perplexity MCP:** Live web research, competitor analysis
- **Playwright MCP:** Browser automation, screenshots
- **Filesystem MCP:** Read/write project files

---

## Service Tiers (What CFA Sells)

| Tier | Description | Price |
|------|-------------|-------|
| AI Assessment | 2-hour audit + roadmap | $500-$1,500 |
| Starter Stack | 1-2 agents + training | $2,500-$5,000 |
| Full Buildout | All 6 agents + 90-day support | $10,000-$25,000 |
| Retainer | Ongoing optimization | $1,500-$3,000/mo |

---

## Key Phrases to Use in Content

- "Stop hiring. Start building."
- "AI gangsters" / "We're not consultants"
- "Built by contractors, for contractors"
- "The 6 agents every contractor needs"
- "10-80-10" (human-AI-human)
- "You already have the data. You just don't have the agents reading it."

---

## Current Priority

**Phase 1:** Set up project structure with all SKILL.md files
**Phase 2:** Create CFA brand context and avatar files
**Phase 3:** Build 30-day launch campaign workflow
**Phase 4:** Test agent collaboration

---

## How to Work With Me

1. I read this file at the start of every session
2. Ask me to create files — I'll write them directly to the filesystem
3. I can run bash commands, commit to Git, push to GitHub
4. For content creation, I'll follow HAIL framework
5. For planning, I'll follow 5Ms workflow

---

## Links & References

- **Parent company:** GGTC (Gables & Grove, Tikrr, Command-F Agency)
- **Proof source:** Gables & Grove painting company, $2M+ revenue
- **Methodology:** Dan Martell's 8.8M Operating System + AI Operating System

---

*Last updated: March 2026*
*Command-F Agency | GGTC*