# ADR-001: Adopt Canonical Plugin Structure

- **Status:** Superseded
- **Date:** 2025-07-15 (original), 2026-03-18 (superseded)
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
- Plugin README.md is served correctly by VS Code's "Open Readme" action.

**Cons:**

- Skills would exist in two locations (`.github/skills/` for agentic workflows,
  `plugins/<name>/skills/` for distribution), creating duplication or complex
  symlink management.
- Agentic workflows hard-code the `.github/skills/` path — duplicating or
  moving skills would break them.
- Increased cognitive overhead maintaining two directory trees.

### Option 2 — Keep the repository as-is (originally chosen)

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
- VS Code "Open Readme" for plugins 404s because there is no `README.md` at
  the `source` path.

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

### Option 4 — Canonical `plugins/` layout with repo-local skills (adopted)

Adopt the canonical [`github/copilot-plugins`](https://github.com/github/copilot-plugins)
layout: move distributed skills to `plugins/<plugin>/skills/<skill>/`, keep
repo-local skills (e.g., `sensei`, `update-marketplace`) in `.github/skills/`.

**Pros:**

- Matches the canonical copilot-plugins structure exactly.
- Each plugin gets its own `README.md` served by VS Code's "Open Readme".
- No skill duplication — distributed skills move once to `plugins/`.
- Repo-local skills remain in `.github/skills/` for agentic workflows.
- Clean separation: `plugins/` = distributed, `.github/skills/` = repo-only.

**Cons:**

- Migration effort to move 16 skills.
- Agentic workflows that reference moved skills would need updating (confirmed
  none currently do).
- Two skill locations still exist, but the separation is intentional and clear.

## Original Decision (2025-07-15)

**Option 2 — keep the repository as-is.** This was chosen because the agentic
workflow constraint seemed to require all skills in `.github/skills/`. However,
testing revealed that no agentic workflows depend on the distributed skills,
and the plugin system's "Open Readme" feature specifically looks for
`README.md` at the plugin `source` path.

## Revised Decision (2026-03-18)

**Option 4 — canonical `plugins/` layout with repo-local skills.** After
testing the `..` path traversal approach (which worked for skill resolution but
not for READMEs) and analyzing the canonical `github/copilot-plugins` repo, we
adopted its layout:

1. Moved 16 distributed skills to `plugins/<plugin>/skills/<skill>/`.
2. Retained `sensei` (git submodule) and `update-marketplace` (repo
   management) in `.github/skills/`.
3. Removed `sensei` and `marketplace-management` from the marketplace plugins.
4. Updated `marketplace.json` to v2.0.0 with canonical
   `source: "./plugins/<name>"` paths.
5. Rewrote the `update-marketplace` skill and script to scan `plugins/`
   and generate per-plugin `README.md` files.

## Rationale

- **Canonical compatibility** — matching the `github/copilot-plugins` layout
  ensures plugin features (README display, skill resolution) work correctly.
- **No agentic workflow breakage** — confirmed that no `engine: copilot`
  workflows reference the moved skills; they only use MCP tools directly.
- **Clear separation** — `plugins/` contains everything for distribution;
  `.github/skills/` contains repo-only tooling.
- **The `sensei` skill is a git submodule** (from
  [spboyer/sensei](https://github.com/spboyer/sensei)) and remains in
  `.github/skills/sensei/`.

## Consequences

- Each plugin has its own `README.md` at `plugins/<plugin>/README.md`, served
  by VS Code's "Open Readme" action.
- The `update-marketplace` skill auto-generates plugin READMEs via its
  `-UpdateReadmes` mode.
- Future skills intended for distribution should be created under
  `plugins/<plugin>/skills/`.
- Repo-local skills should remain in `.github/skills/`.
- This decision should still be revisited if the plugin specification changes
  significantly (tracked in
  [issue #9](https://github.com/PlagueHO/plagueho.os/issues/9)).
