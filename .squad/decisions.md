# Squad Decisions

## Active Decisions

### DEC-001: Team Cast — The Matrix Universe

**Date:** 2026-03-18
**Author:** Neo (Lead Architect)
**Status:** ✅ Accepted

The squad is cast from **The Matrix** (1999) universe:

| Agent | Role | Why This Character |
|-------|------|--------------------|
| Neo | Lead Architect | Sees through complexity to elegant solutions |
| Trinity | Demo Engineer | Executes with precision, never fails |
| Morpheus | DevRel & Evangelist | Opens minds, delivers the message |
| Oracle | Intelligence Analyst | Sees the future, knows what matters |
| Dozer | SaaS & Multitenancy Specialist | Builds the infrastructure that keeps everything running |

### DEC-002: Demo Factory Architecture

**Date:** 2026-03-18
**Author:** Neo (Lead Architect)
**Status:** ✅ Accepted

Demos are organized under `demos/` with category subfolders:
- `azure-ai/` — Azure AI Foundry, OpenAI, agents
- `github-copilot/` — Copilot extensions, agents, MCP
- `dotnet-aspire/` — .NET Aspire cloud-native apps
- `saas-multitenancy/` — SaaS patterns, ARB references
- `bleeding-edge/` — Preview features, experimental
- `_archive/` — Retired demos

Each demo is self-contained with README, source, and deployment script.
Quality gate: "Would Satya demo this on stage at Build?"

### DEC-003: WorkIQ Intelligence Loop

**Date:** 2026-03-18
**Author:** Oracle (Intelligence Analyst)
**Status:** ✅ Accepted

Oracle uses WorkIQ MCP server to mine Daniel's M365 data for demo ideas.
A daily GitHub Actions workflow creates demo issues automatically.
Oracle adds intelligence briefs with signal strength classification.

## Governance

- All meaningful changes require team consensus
- Document architectural decisions here
- Keep history focused on work, decisions focused on direction
