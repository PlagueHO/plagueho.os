# Work Routing

How to decide who handles what.

## Routing Table

| Work Type | Route To | Examples |
|-----------|----------|----------|
| Architecture & tech decisions | Neo 🏗️ | Demo architecture, tech stack choices, quality gates |
| Demo building & implementation | Trinity 🔧 | Azure AI demos, Copilot extensions, .NET Aspire apps |
| Narratives & presentation | Morpheus 📝 | Demo READMEs, talk tracks, blog drafts, elevator pitches |
| Intelligence & trend analysis | Oracle 📊 | WorkIQ queries, partner needs, announcement tracking |
| SaaS & multitenancy patterns | Dozer 🔒 | Tenant isolation, Entra ID, ARB patterns, IaC templates |
| Code review | Neo 🏗️ | Review PRs, check demo quality, ensure stage-readiness |
| Testing & validation | Trinity 🔧 | Verify demos work, test deployments, edge cases |
| Scope & priorities | Neo 🏗️ | What to build next, trade-offs, decisions |
| Async issue work (scaffolding, bug fixes, small features) | @copilot 🤖 | Well-defined tasks matching capability profile |
| Session logging | Scribe 📋 | Automatic — never needs routing |

## Issue Routing

| Label | Action | Who |
|-------|--------|-----|
| `squad` | Triage: analyze issue, evaluate @copilot fit, assign `squad:{member}` label | Neo |
| `squad:neo` | Architecture decisions, demo reviews, priority calls | Neo |
| `squad:trinity` | Build and test demos, implement features | Trinity |
| `squad:morpheus` | Write narratives, READMEs, presentation content | Morpheus |
| `squad:oracle` | Intelligence gathering, trend analysis, demo proposals | Oracle |
| `squad:dozer` | SaaS patterns, multitenancy demos, IaC templates | Dozer |
| `squad:copilot` | Assign to @copilot for autonomous work (if enabled) | @copilot 🤖 |

### How Issue Assignment Works

1. When a GitHub issue gets the `squad` label, **Neo** triages it — analyzing content, evaluating @copilot's capability profile, assigning the right `squad:{member}` label, and commenting with triage notes.
2. **@copilot evaluation:** Neo checks if the issue matches @copilot's capability profile (🟢 good fit / 🟡 needs review / 🔴 not suitable). If it's a good fit, Neo routes to `squad:copilot` instead of a squad member.
3. When a `squad:{member}` label is applied, that member picks up the issue in their next session.
4. When `squad:copilot` is applied and auto-assign is enabled, `@copilot` is assigned on the issue and picks it up autonomously.
5. Members can reassign by removing their label and adding another member's label.
6. The `squad` label is the "inbox" — untriaged issues waiting for Neo's review.

### Neo's Triage Guidance for @copilot

When triaging, Neo should ask:

1. **Is this well-defined?** Clear title, acceptance criteria, bounded scope → likely 🟢
2. **Does it follow existing patterns?** Adding a test, fixing a bug, scaffolding a demo → likely 🟢
3. **Does it need design judgment?** Architecture, demo narrative, UX decisions → likely 🔴
4. **Is it security-sensitive?** Auth, encryption, tenant isolation → always 🔴
5. **Is it medium complexity with specs?** Demo with clear requirements, refactoring → likely 🟡

### Demo-Specific Routing

| Demo Category | Primary | Secondary |
|--------------|---------|-----------|
| Azure AI Foundry / OpenAI | Trinity | Neo (review) |
| GitHub Copilot extensions | Trinity | Morpheus (narrative) |
| .NET Aspire | Trinity | Neo (architecture) |
| SaaS multitenancy | Dozer | Neo (review) |
| Bleeding-edge / experimental | Trinity | Oracle (relevance) |
| Partner-driven demos | Oracle (proposal) | Trinity (build) |

## Rules

1. **Eager by default** — spawn all agents who could usefully start work, including anticipatory downstream work.
2. **Scribe always runs** after substantial work, always as `mode: "background"`. Never blocks.
3. **Quick facts → coordinator answers directly.** Don't spawn an agent for trivial questions.
4. **When two agents could handle it**, pick the one whose domain is the primary concern.
5. **"Team, ..." → fan-out.** Spawn all relevant agents in parallel as `mode: "background"`.
6. **Anticipate downstream work.** If Trinity builds a demo, spawn Morpheus to write the narrative simultaneously.
7. **Issue-labeled work** — when a `squad:{member}` label is applied, route to that member. Neo handles all `squad` (base label) triage.
8. **@copilot routing** — check @copilot's capability profile in `team.md`. Route 🟢 tasks to `squad:copilot`. Flag 🟡 tasks for PR review. Keep 🔴 tasks with squad members.
9. **Oracle first** — for new demo ideas, always consult Oracle for intelligence context before assigning to Trinity.
10. **Demo quality gate** — every demo PR must be reviewed by Neo before merge. Ask: "Would Satya demo this?"
