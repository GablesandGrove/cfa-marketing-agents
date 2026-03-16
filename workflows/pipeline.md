# CFA Content Pipeline

> **Research → Strategy → Content → Distribute**
> The four-stage system every piece of content runs through.
> No stage is optional. No shortcuts.

---

```
┌─────────────────────────────────────────────────────────────────────┐
│                     CFA CONTENT PIPELINE                            │
│                                                                     │
│  [RESEARCH] → [STRATEGY] → [CONTENT] → [DISTRIBUTE]                │
│      ↓              ↓           ↓            ↓                      │
│  Pain signals   Positioning  HAIL assets  Platform-ready            │
│  ICP quotes     Hook bank    Scripts      Paid amplification        │
│  Comp gaps      Channel map  Copy         Repurposing map           │
│                                                                     │
│  Agent:         Agent:       Agent:       Agents:                   │
│  Research Intel Strategist   Content      Ads Manager               │
│                              Writer       SEO Analyst               │
│                                                                     │
│  QA at every stage: Brand Strategist                                │
└─────────────────────────────────────────────────────────────────────┘
```

---

## Stage 1 — RESEARCH

**Owner:** Research Intel Agent (`agents/research-intel/SKILL.md`)
**Trigger:** Campaign brief, weekly scan, or Orchestrator request

### What happens
The Research Intel Agent scans trades contractor communities for active pain signals. It does not create strategy or content — it surfaces raw intelligence.

### Sources
- Facebook groups (painting, roofing, HVAC, trades business owners)
- Reddit (r/painting, r/smallbusiness, r/contractors)
- LinkedIn posts and comments
- YouTube comments on contractor software and tools
- G2 / Capterra software reviews
- Competitor content (ServiceTitan, Jobber, Hatch)

### Output: Research Report

```markdown
# Research Report
Date: YYYY-MM-DD
Topic/Campaign: [name]

## Theme 1: [Pain Theme]
- Frequency: High / Medium / Low
- Emotional tone: Frustrated / Cynical / Confused / Hopeful
- Typical language: "[exact phrases]"
- Primary archetype: [Gary | Sam | Alex | Mike | Olivia | Ethan]
- Why it matters: [business impact]
- CFA response: [how we solve this]
- Content opportunities:
  - LinkedIn angle:
  - Instagram angle:
  - YouTube angle:
  - Blog angle:
```

**Saved to:** `shared/campaign-briefs/research-[YYYY-MM-DD]-[topic].md`

**Handoff to:** Strategist Agent

---

## Stage 2 — STRATEGY

**Owner:** Strategist Agent (`agents/strategist/SKILL.md`)
**Input:** Research report from Stage 1

### What happens
The Strategist Agent converts raw pain signals into a content blueprint. It defines CFA's specific angle, generates the hook bank, maps to channels, assigns CTAs by buyer mode, and tags to archetype.

### Output: Strategy Brief

```markdown
# Strategy Brief
Date: YYYY-MM-DD
Source: [Research Report reference]

## Pain Theme: [Theme]

### Strategic Position
[One-line: CFA's specific angle on this pain]

### CFA Narrative
[2–3 sentences. Operator voice. Specific. No fluff.]

### Hook Bank
1. [Aggressive/contrarian]
2. [Proof-based]
3. [Pain mirror]
4. [Curiosity-driven]
5. [Urgency]
[Up to 10]

### Channel Angles
- LinkedIn: [angle + format]
- Instagram: [angle + format]
- YouTube: [angle + format]
- Blog: [angle + format]

### CTA Direction
- Core: [Hard CTA]
- Casual: [Soft CTA]
- New: [No CTA — pure value]

### Archetype Target
- Primary: [archetype]
- Secondary: [archetype]

### Content Intent
[Educational | Aggressive | Proof-driven | Conversion]
```

**Saved to:** `shared/campaign-briefs/strategy-[YYYY-MM-DD]-[topic].md`

**Handoff to:** Content Writer Agent

---

## Stage 3 — CONTENT

**Owner:** Content Writer Agent (`agents/content-writer/SKILL.md`)
**Input:** Strategy brief from Stage 2

### What happens
The Content Writer produces all final content assets using the HAIL framework. Written posts, video scripts, email copy, carousels — all produced in this stage.

### HAIL Applied

```
H — Hook       First line stops the scroll. 3 C's: Context / Contrarian / Create Intrigue.
A — Anatomy    Explain the concept. Plain language. Connect to Fred's pain.
I — Illustration  Make it real. G&G story, specific number, contractor example.
L — Lesson     Actionable takeaway. One CTA. Results in Advance.
```

### Output: Content Assets

**Written format:**
```markdown
# Content: [Title]
Type: [LinkedIn | Email | Blog | Carousel]
Format: Written
CCN Mode: [Core | Casual | New]
Archetype: [Gary | Sam | Alex | Mike | Olivia | Ethan]
Platform: [where it publishes]

---
[FULL CONTENT]
---

Hook Score: [1–10]
Notes: [human tweaks needed]
```

**Video format:**
```markdown
# Video Script: [Title]
Platform: [YouTube Shorts | Reels | TikTok | LinkedIn Video]
Length: [target seconds]
CCN Mode: [Core | Casual | New]
Archetype: [Gary | Sam | Alex | Mike | Olivia | Ethan]
Raw Input: [voice note | job site photos | screen recording | AI-generated]

[0:00–0:03] HOOK
Visual: | Spoken: | Text overlay:

[0:03–0:15] ANATOMY
Visual: | Spoken:

[0:15–0:40] ILLUSTRATION
Visual: | Spoken:

[0:40–0:60] LESSON + CTA
Visual: | Spoken: | CTA overlay:

---
Hook Score: [1–10]
Production Notes: [CapCut / Sora / Nano Banana]
```

**→ Brand Strategist review before moving to Stage 4.**
Brand Strategist checks against the 5 Non-Negotiables and 4-Question Content Test. If flagged, returns to Content Writer with notes.

**Saved to:** `the-lake/processed/[platform]/[YYYY-MM-DD]-[title].md`

**Handoff to:** Ads Manager + SEO Analyst (Stage 4)

---

## Stage 4 — DISTRIBUTE

**Owners:** Ads Manager (`agents/ads-manager/SKILL.md`) + SEO Analyst (`agents/seo-analyst/SKILL.md`)
**Input:** Approved content assets from Stage 3

### What happens
Approved assets are platform-optimized, paid amplification is planned for top performers, SEO metadata is added to blog/YouTube content, and all assets are repurposed across The Lake.

### Ads Manager Output

```markdown
# Amplification Plan: [Content Title]
Date: YYYY-MM-DD
Platform: [Meta | LinkedIn | Google]
Budget: $X/day for X days
Audience: [Cold trades | Retarget video viewers | Lookalike from assessment bookers]
Objective: [Video views | Link clicks | Conversions]
Creative: [which asset]
CTA: [button text + destination]
Trigger: [organic post hit X% engagement]
```

### SEO Analyst Output (Blog/YouTube only)

```markdown
# SEO Brief: [Content Title]
Primary keyword: [keyword]
Secondary keywords: [2–3]
Meta title: [under 60 chars]
Meta description: [under 155 chars]
YouTube title: [under 70 chars]
YouTube description: [first 125 chars hook]
Tags: [5–8 tags]
Internal links: [2–3 relevant CFA pages]
```

### Repurposing Map (Standard)

| Source | Repurposed To | Notes |
|--------|--------------|-------|
| LinkedIn post | Instagram caption | Trim to 150 words |
| Long YouTube video | 3 Reels clips | Pull Hook + Illustration + CTA moments |
| Email case study | LinkedIn carousel | 8–10 slides |
| Carousel | Individual quote graphics | 1 graphic per slide |
| Any post at 10%+ engagement | Paid ad creative | Ads Manager activates |

**Final assets saved to:** `the-lake/by-platform/[platform]/`

---

## QA: Brand Strategist

**File:** `agents/brand-strategist/SKILL.md`
**Role:** Quality assurance at every stage transition.

The Brand Strategist does not block the pipeline — it enforces standards so the pipeline produces CFA-quality output every time.

### The 5 Non-Negotiables (every piece must pass all five)

| # | Rule | Check |
|---|------|-------|
| 1 | **Direct** — No fluff. First sentence delivers value. | ✅ / ❌ |
| 2 | **Aggressive** — Challenging, not safe. | ✅ / ❌ |
| 3 | **Credible** — Operator voice. Proof attached. | ✅ / ❌ |
| 4 | **Urgent** — The clock is ticking. | ✅ / ❌ |
| 5 | **Real** — Trades talk. Zero tech jargon. | ✅ / ❌ |

### The 4-Question Content Test

1. Would a contractor read this at 5am before heading to a job site?
2. Does this sound like an operator or a consultant?
3. Is there any sentence that could appear in a generic marketing agency's copy? (If yes — delete it.)
4. Would Andrew actually say this out loud?

**If any answer is no → back to Content Writer with specific notes.**

---

## File Naming Convention

```
Research:  shared/campaign-briefs/research-YYYY-MM-DD-[slug].md
Strategy:  shared/campaign-briefs/strategy-YYYY-MM-DD-[slug].md
Content:   the-lake/processed/[platform]/YYYY-MM-DD-[slug].md
Final:     the-lake/by-platform/[platform]/YYYY-MM-DD-[slug].md
```

---

## Single-Piece Run (Minimum Viable Pipeline)

For fast-turn content when there isn't time for a full research cycle:

```
1. Orchestrator identifies pain theme from ICP War Profile
2. Strategist → 15-minute brief: position + top 3 hooks + one channel angle
3. Content Writer → draft against HAIL
4. Brand Strategist → 5-Non-Negotiable check
5. Route to the-lake/by-platform/
6. Publish
```

Use for reactive content, trend hijacks, and Andrew's voice notes.
Do not skip Brand Strategist QA, even in fast-turn mode.

---

## Full Sprint Run (Weekly)

```
MON  Research Intel → Weekly Intel Brief
MON  Orchestrator → confirm 70/20/10 + CCN balance
MON–TUE  Strategist → strategy briefs for all pieces this week
TUE–WED  Content Writer → produce all assets
WED  Brand Strategist → batch review
THU  Ads Manager + SEO Analyst → optimize + prep
THU  Orchestrator → route to the-lake/by-platform/
FRI  Human review + approve
FRI  Publish
```

---

*CFA Content Pipeline | Command-F Agency | GGTC*
*Last updated: March 2026*
