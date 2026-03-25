# WorkIQ Intelligence Loop

How the squad uses WorkIQ to continuously discover and prioritize demos.

## Overview

Oracle (Intelligence Analyst) uses the WorkIQ MCP server to mine Daniel's
Microsoft 365 data — emails, meetings, Teams chats, documents — to identify
what demos to build next. This creates a feedback loop between real partner
conversations and demo output.

## How It Works

```text
┌─────────────────────┐
│  Daniel's Work Life  │
│  (emails, meetings,  │
│   chats, documents)  │
└──────────┬──────────┘
           │ WorkIQ MCP
           ▼
┌─────────────────────┐
│  Oracle (Intel)      │
│  Identifies trends,  │
│  partner needs,      │
│  upcoming events     │
└──────────┬──────────┘
           │ Creates issues
           ▼
┌─────────────────────┐
│  Neo (Lead)          │
│  Triages, assigns,   │
│  prioritizes         │
└──────────┬──────────┘
           │ Routes work
           ▼
┌─────────────────────────────────────┐
│  Trinity (Demo) + Morpheus (Story)  │
│  + Dozer (SaaS) + @copilot         │
│  Build, test, document demos        │
└──────────┬──────────────────────────┘
           │ PRs to demos/
           ▼
┌─────────────────────┐
│  Neo (Review)        │
│  "Would Satya        │
│   demo this?"        │
└─────────────────────┘
```

## Triggering an Intelligence Scan

### Automatic (Daily)

The `squad-daily-demo.yml` workflow creates a daily issue. Oracle should
check WorkIQ context before or during the demo build to add relevance.

### Manual (In Session)

Start a Copilot session and say:

```text
Oracle, run an intelligence scan. What should we build next?
```

Or use the prompt file:

```text
@workspace /prompt workiq-intelligence-scan
```

### Via GitHub Issue

Create an issue with the `squad` label and title containing "intelligence scan"
or "what should we build" — Neo will route it to Oracle.

## WorkIQ Query Patterns

Oracle uses these query patterns with the WorkIQ MCP server:

| Question | Purpose |
|----------|---------|
| "What topics has Daniel discussed in meetings this week?" | Identify hot topics |
| "What are partners asking about in recent emails?" | Partner demand signals |
| "Any upcoming presentations or demos scheduled?" | Deadline awareness |
| "What Azure/AI topics in Teams chats?" | Informal signal capture |
| "Recent documents about architecture or SaaS?" | ARB focus areas |

## Signal Strength Classification

| Level | Meaning | Action |
|-------|---------|--------|
| 🔴 Hot | 3+ conversations, exec visibility, or deadline | Build immediately |
| 🟡 Warm | Repeated mentions, growing interest | Queue for next sprint |
| 🟢 Emerging | New announcement, early interest | Watch and prototype |

## Privacy & Security

- WorkIQ queries stay within the Microsoft 365 tenant
- No PII is written to committed files
- Intelligence briefs summarize topics, not quote conversations
- Partner names can be referenced but not email addresses
