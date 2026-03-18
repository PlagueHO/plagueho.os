# ADR-001: Keep Unified Repository Structure

- **Status:** Accepted
- **Date:** 2025-07-15
- **Decision maker:** Daniel Scott-Raynsford

## Context

The `plagueho.os` repository serves four distinct roles:

1. **Personal OS repo** — organizational engineering assets (scripts, patterns,
   prompts, documentation) used across repositories.
2. **VS Code agent plugin marketplace** — skills and agents exposed as
   installable plugin bundles via `.github/plugin/marketplace.json`.
3. **Skill authoring workspace** — the primary location for developing and
   testing GitHub Copilot skills.
4. **GitHub Agentic Workflows host** — `engine: copilot` workflows that invoke
   skills at `.github/skills/` via `gh aw`.

As the plugin marketplace grew (8 plugins, 16+ skills), the question arose
whether the repository should be restructured to better separate plugin
distribution from personal workspace concerns.

## Options Considered

### Option 1 — Add a `plugins/` folder (hybrid)

Mirror the [`github/copilot-plugins`](https://github.com/github/copilot-plugins)
canonical structure by adding a top-level `plugins/` directory with per-plugin
`README.md` and `skills/` subdirectories, while keeping the repo as a personal
OS workspace.

**Pros:**

- Gives each plugin bundle its own documentation space.
- Closer to the canonical copilot-plugins structure.

**Cons:**

- Skills would exist in two locations (`.github/skills/` for agentic workflows,
  `plugins/<name>/skills/` for distribution), creating duplication or complex
  symlink management.
- Agentic workflows hard-code the `.github/skills/` path — duplicating or
  moving skills would break them.
- Increased cognitive overhead maintaining two directory trees.

### Option 2 — Keep the repository as-is (chosen)

Make no structural changes. Improve discoverability by adding a plugin-focused
README at `.github/plugin/README.md` and keeping the root README plugin table
up to date.

**Pros:**

- Zero migration effort; nothing breaks.
- Agentic workflows continue to reference `.github/skills/` directly.
- Single source of truth for each skill.
- Aligned with the current early-stage plugin system that may change.

**Cons:**

- Plugin consumers see the full OS repo rather than a focused plugin catalog.
- Per-plugin documentation lives in each skill folder rather than in a dedicated
  plugin bundle directory.

### Option 3 — Create a separate `plagueho.copilot-plugins` repository

Move all plugin-related assets to a new dedicated repository following the
canonical copilot-plugins pattern.

**Pros:**

- Clean separation of concerns.
- Plugin consumers see only plugin content.

**Cons:**

- **Critical blocker:** Agentic workflows (`engine: copilot`) require skills to
  be in `.github/skills/` of the same repository. A separate repo cannot host
  agentic workflows that invoke these skills.
- Duplicating skills across repos introduces synchronization burden.
- Additional CI/CD and maintenance overhead.

## Decision

**Option 2 — keep the repository as-is** with the following improvements:

1. Add a plugin-focused [`README.md`](../../.github/plugin/README.md) in
   `.github/plugin/` documenting all available plugins, their skills, and
   setup instructions.
2. Keep the root `README.md` plugin table as the primary entry point for
   consumers.
3. Document this decision for future reference.

## Rationale

- **Agentic workflow compatibility** is the strongest constraint. Skills must
  live at `.github/skills/` for `engine: copilot` workflows to invoke them.
  Moving or duplicating them undermines this.
- **The plugin system is still evolving.** Restructuring now risks rework when
  the plugin specification matures.
- **Single source of truth** is simpler to maintain than any multi-location
  approach.
- **The `sensei` skill is a git submodule** (from
  [spboyer/sensei](https://github.com/spboyer/sensei)) and should not be
  moved or modified in this repository.

## Consequences

- Plugin documentation is distributed across individual skill folders and the
  new `.github/plugin/README.md` rather than in per-plugin bundle directories.
- If the plugin specification later supports alternative skill locations, this
  decision can be revisited.
- The `update-marketplace` skill should be used regularly to keep
  `marketplace.json` in sync with new skills.
