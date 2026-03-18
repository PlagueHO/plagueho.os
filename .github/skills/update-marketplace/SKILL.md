---
name: update-marketplace

description: >-
  **WORKFLOW SKILL** — Update marketplace.json by discovering unassigned skills
  and agents in the plugins/ directory, grouping them into plugins, and
  appending entries. Also generates or updates README.md files in each
  plugin directory. Append-only with SemVer version bumps. WHEN: "update
  marketplace", "sync marketplace", "add to marketplace", "marketplace update",
  "group plugins", "update marketplace.json", "refresh marketplace",
  "marketplace sync". INVOKES: run_in_terminal, vscode_askQuestions.
  FOR SINGLE OPERATIONS: Edit marketplace.json directly.

metadata:
  author: plagueho.os
  version: "2.0"
  reference: https://agentskills.io/specification
---

# Update Marketplace

Update `.github/plugin/marketplace.json` by discovering skills and agents
inside the `plugins/` directory that are not yet assigned to a plugin entry,
grouping them into existing plugins where they fit, and creating new plugins
when they do not. Also generates or updates `README.md` files in each
`plugins/<plugin>/` directory.

This skill is **append-only** — it never removes a skill or agent from a
plugin once it exists.

## Repository Structure

The marketplace follows the canonical
[github/copilot-plugins](https://github.com/github/copilot-plugins) layout:

```text
plugins/
├── <plugin-name>/
│   ├── README.md          # Plugin documentation (auto-generated)
│   └── skills/
│       ├── <skill-a>/
│       │   └── SKILL.md
│       └── <skill-b>/
│           └── SKILL.md
└── ...
.github/
├── plugin/
│   ├── marketplace.json   # Marketplace index
│   └── marketplace.schema.json
└── skills/                # Repo-local skills (not in marketplace)
    ├── sensei/
    └── update-marketplace/
        └── assets/
            └── plugin-readme-template.md   # README template
```

Skills distributed via the marketplace live under `plugins/<plugin>/skills/`.
Repo-local skills (e.g., `sensei`, `update-marketplace`) stay in
`.github/skills/` and are **not** included in `marketplace.json`.

## Prerequisites

- **PowerShell 7+** (Windows) or **Bash** (macOS/Linux) for running the
  bundled scripts.
- The repo must contain `.github/plugin/marketplace.json` and the
  `.github/plugin/marketplace.schema.json` schema file.

## Key Rules

1. **Append-only**: Never remove a skill or agent from a plugin. Only add new
   entries to `skills` or `agents` arrays.
2. **SemVer**: When a skill or agent is added to a plugin, bump that plugin's
   version MINOR component (e.g., `1.0.0` → `1.1.0`). When the marketplace
   file is updated at all, bump the marketplace `metadata.version` MINOR
   component.
3. **Canonical paths**: Each plugin's `source` is `./plugins/<plugin-name>`.
   Each skill entry is `./skills/<skill-name>` (relative to the plugin source).
4. **Grouping**: Propose grouping by analyzing names and descriptions. If a new
   skill or agent clearly relates to an existing plugin's theme, append it
   there. If uncertain, use `vscode_askQuestions` to propose one or more target
   plugins and let the user decide.
5. **New plugins**: If a skill or agent does not fit any existing plugin, use
   `vscode_askQuestions` to propose creating a new plugin — provide a suggested
   name and description for the user to approve. Then create
   `plugins/<plugin-name>/skills/` and move the skill there.
6. **README generation**: After any changes, regenerate `README.md` in each
   affected plugin directory using the template asset at
   `<skill-root>/assets/plugin-readme-template.md` and data from the plugin
   description and skill list. The template follows the canonical format from
   [github/copilot-plugins](https://github.com/github/copilot-plugins/tree/main/plugins/advanced-security).

## Process

### Step 1 — Discover Unassigned Items

Run the discovery script to identify skills and agents inside `plugins/`
that are not yet listed in any plugin entry in `marketplace.json`.

```powershell
& "<skill-root>/scripts/Update-Marketplace.ps1" `
    -RepoRoot "<repo-root>" `
    -Discover
```

The script outputs a JSON array of unassigned items, each with `type`
(`skill` or `agent`), `name`, `description`, `plugin` (parent plugin
directory name), and `relativePath` (e.g., `./skills/my-skill`).

If the output is empty, the marketplace is already up to date — report this
to the user and stop.

### Step 2 — Propose Grouping

For each unassigned item:

1. Read the current `marketplace.json` plugins list.
2. The item's `plugin` field indicates which plugin directory it is in.
3. If a matching plugin entry already exists in `marketplace.json`, plan to
   append the skill to it.
4. If no plugin entry exists for that directory, collect it as a "new plugin
   candidate."

For new plugin candidates, use `vscode_askQuestions` to present the proposal:

- Show the plugin directory name, the skill names and descriptions.
- Suggest a plugin description.
- Let the user approve or modify.

### Step 3 — Apply Changes

Once grouping is confirmed, run the update script to apply changes.

**To add a skill to an existing plugin:**

```powershell
& "<skill-root>/scripts/Update-Marketplace.ps1" `
    -RepoRoot "<repo-root>" `
    -PluginName "<plugin-name>" `
    -AddSkill "./skills/<skill-name>"
```

**To create a new plugin with a skill:**

```powershell
& "<skill-root>/scripts/Update-Marketplace.ps1" `
    -RepoRoot "<repo-root>" `
    -NewPlugin `
    -PluginName "<plugin-name>" `
    -PluginDescription "<description>" `
    -AddSkill "./skills/<skill-name>"
```

Each invocation bumps the affected plugin's MINOR version and the marketplace
MINOR version automatically.

### Step 4 — Update READMEs

After all marketplace.json changes are applied, regenerate READMEs for
affected plugins:

```powershell
& "<skill-root>/scripts/Update-Marketplace.ps1" `
    -RepoRoot "<repo-root>" `
    -UpdateReadmes
```

This reads each plugin entry from `marketplace.json`, reads each skill's
SKILL.md frontmatter, and generates a `README.md` in that plugin directory
using the template asset at `<skill-root>/assets/plugin-readme-template.md`.

The generated README follows the canonical
[github/copilot-plugins](https://github.com/github/copilot-plugins/tree/main/plugins/advanced-security)
format:

- **H1 title** — Title-cased plugin name.
- **Description** — Plugin description from `marketplace.json`.
- **What it does** — Bullet list derived from each skill's description.
- **Skills** — One H3 subsection per skill with the activation context.

### Step 5 — Validate

After all changes are applied, validate the marketplace JSON against its schema:

```bash
npx --yes ajv-cli validate \
    -s .github/plugin/marketplace.schema.json \
    -d .github/plugin/marketplace.json
```

If validation fails, report the errors and do not commit the change.

### Step 6 — Present Results

Show the user:

1. A summary of items added and which plugins they were assigned to.
2. Any new plugins created.
3. Updated version numbers for affected plugins and the marketplace.
4. READMEs generated or updated.
5. Validation result (pass/fail).

## Edge Cases

- **Skill directory exists but has no SKILL.md**: Skip it with a warning.
- **Agent file has no YAML frontmatter**: Derive the name from the filename
  and use the first paragraph as the description.
- **Plugin already contains the skill/agent**: Skip it — no duplicate entries,
  no version bump.
- **Empty marketplace.json**: Create the initial structure with the first
  plugin.
- **Plugin directory has no matching marketplace.json entry**: Treat all skills
  in it as unassigned and propose creating a new plugin entry.

## Marketplace Schema Reference

Plugins in `marketplace.json` follow the canonical structure:

```json
{
  "name": "plugin-name",
  "source": "./plugins/plugin-name",
  "description": "What this plugin bundle does.",
  "version": "1.0.0",
  "skills": [
    "./skills/my-skill"
  ]
}
```

- `skills` array: Relative paths from the plugin source to skill directories.
  Use `"."` when the plugin source IS the skill directory.
- `agents` array: Relative paths from the plugin source to agent `.agent.md`
  files.
- Both arrays are append-only once an entry exists.
