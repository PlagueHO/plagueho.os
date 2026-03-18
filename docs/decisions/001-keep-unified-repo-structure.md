# ADR-001: Adopt Canonical Plugin Structure

- **Status:** Superseded
- **Date:** 2025-07-15 (original), 2026-03-18 (superseded)
- **Decision maker:** Daniel Scott-Raynsford

## Context

The `plagueho.os` repository served four distinct roles:

1. **Personal OS repo** — organizational engineering assets (scripts, patterns,
   prompts, documentation) used across repositories.
2. **VS Code agent plugin marketplace** — skills and agents exposed as
   installable plugin bundles via `.github/plugin/marketplace.json`.
3. **Skill authoring workspace** — the primary location for developing and
   testing GitHub Copilot skills.
4. **GitHub Agentic Workflows host** — `engine: copilot` workflows that invoke
   skills at `.github/skills/` via `gh aw`.

As the plugin marketplace grew (7 plugins, 16+ skills), the question arose
whether the repository should be restructured to better separate plugin
distribution from personal workspace concerns.

## Options Considered

### Option 1 — Add a `plugins/` folder (hybrid)

Adopted in a previous revision. See git history for details.

### Option 2 — Keep the repository as-is (originally chosen)

Adopted initially in 2025-07-15. See git history for details.

### Option 3 — Create a separate `PlagueHO/skills` repository (final decision)

Move all plugin-related assets (plugins, tests, marketplace infrastructure,
marketplace scripts) to a new dedicated repository modeled after
[dotnet/skills](https://github.com/dotnet/skills).

**Pros:**

- Clean separation of concerns: `plagueho.os` focuses on OS/workflows/knowledge,
  `skills` focuses on plugin distribution.
- Plugin consumers see only plugin content.
- Follows the successful `dotnet/skills` pattern.
- Both repos have focused CI pipelines.
- Enables independent versioning and release cadence.

**Cons:**

- Agentic workflows that need local skills must keep them in `plagueho.os`.
- Two repositories to maintain.

### Option 4 — Canonical `plugins/` layout with repo-local skills

Previously adopted. Superseded by Option 3.

## Final Decision (2026-03-18)

**Option 3 — separate `PlagueHO/skills` repository.** All 7 plugin bundles,
their tests, marketplace infrastructure, and marketplace scripts were moved
to [PlagueHO/skills](https://github.com/PlagueHO/skills). The repo follows
the [dotnet/skills](https://github.com/dotnet/skills) structure with:

- `plugins/` directory with per-plugin `plugin.json` and `skills/`
- `.github/plugin/marketplace.json` marketplace index
- `.claude-plugin/marketplace.json` (Claude plugin registry)
- CI workflow with marketplace and schema validation
- `CONTRIBUTING.md` with skill authoring guidelines

## What Stayed in plagueho.os

- `sensei` skill (git submodule — repo-local)
- `update-marketplace` skill (repo management automation)
- Agents, prompts, scripts, patterns, learning pathways
- Agentic workflows and their configurations
- Documentation (except skills reference, which moved)

## Rationale

- **Clean separation** — plugins and skills have a different audience and
  lifecycle than organizational OS assets.
- **Follows proven pattern** — `dotnet/skills` demonstrates this structure
  works well at scale.
- **VS Code marketplace** — consumers now point to `PlagueHO/skills` for
  a focused, clean marketplace experience.
- **No agentic workflow breakage** — repo-local skills that agentic workflows
  depend on stayed in `plagueho.os`.

## Consequences

- VS Code `chat.plugins.marketplaces` setting must be updated from
  `PlagueHO/plagueho.os` to `PlagueHO/skills`.
- New skills should be created in `PlagueHO/skills`.
- Repo-local skills and automation remain in `plagueho.os`.

