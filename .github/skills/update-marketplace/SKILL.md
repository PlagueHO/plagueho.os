---
name: update-marketplace

description: >-
  **WORKFLOW SKILL** — Update marketplace.json by discovering unassigned skills
  and agents, grouping them into plugins, and appending entries. Append-only
  with SemVer version bumps. WHEN: "update marketplace", "sync marketplace",
  "add to marketplace", "marketplace update", "group plugins",
  "update marketplace.json", "refresh marketplace", "marketplace sync".
  INVOKES: run_in_terminal, vscode_askQuestions. FOR SINGLE OPERATIONS:
  Edit marketplace.json directly.

metadata:
  author: plagueho.os
  version: "1.0"
  reference: https://agentskills.io/specification
---

# Update Marketplace

Update `.github/plugin/marketplace.json` by discovering skills and agents that
are not yet assigned to a plugin, grouping them into existing plugins where they
fit, and creating new plugins when they do not. This skill is **append-only** —
it never removes a skill or agent from a plugin once it exists.

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
3. **Grouping**: Propose grouping by analyzing names and descriptions. If a new
   skill or agent clearly relates to an existing plugin's theme, append it
   there. If uncertain, use `vscode_askQuestions` to propose one or more target
   plugins and let the user decide.
4. **New plugins**: If a skill or agent does not fit any existing plugin, use
   `vscode_askQuestions` to propose creating a new plugin — provide a suggested
   name, source path, and description for the user to approve.

## Process

### Step 1 — Discover Unassigned Items

Run the discovery script to identify skills and agents not yet in any plugin.

**PowerShell** (Windows):

```powershell
& "<skill-root>/scripts/Update-Marketplace.ps1" `
    -RepoRoot "<repo-root>" `
    -Discover
```

**Shell** (macOS/Linux):

```bash
"<skill-root>/scripts/update-marketplace.sh" \
    --repo-root "<repo-root>" \
    --discover
```

The script outputs a JSON array of unassigned items, each with `type`
(`skill` or `agent`), `name`, `description`, and `source` fields.

If the output is empty, the marketplace is already up to date — report this
to the user and stop.

### Step 2 — Propose Grouping

For each unassigned item:

1. Read the current `marketplace.json` plugins list.
2. Compare the item's name and description against existing plugin names and
   descriptions.
3. If there is a clear match (e.g., a skill named `suggest-awesome-github-copilot-prompts`
   fits the `suggest-awesome-github-copilot` plugin group), plan to append it.
4. If no clear match exists, collect these items as "new plugin candidates."

For any items where the grouping is uncertain, or for new plugin candidates,
use `vscode_askQuestions` to present the proposal:

- Show the item name and description.
- List candidate existing plugins with explanations of why they might fit.
- Include an option to create a new plugin (with a suggested name, source, and
  description).

### Step 3 — Apply Changes

Once grouping is confirmed, run the update script to apply changes.

**To add a skill to an existing plugin:**

```powershell
& "<skill-root>/scripts/Update-Marketplace.ps1" `
    -RepoRoot "<repo-root>" `
    -PluginName "<plugin-name>" `
    -AddSkill "<relative-skill-path>"
```

```bash
"<skill-root>/scripts/update-marketplace.sh" \
    --repo-root "<repo-root>" \
    --plugin-name "<plugin-name>" \
    --add-skill "<relative-skill-path>"
```

**To add an agent to an existing plugin:**

```powershell
& "<skill-root>/scripts/Update-Marketplace.ps1" `
    -RepoRoot "<repo-root>" `
    -PluginName "<plugin-name>" `
    -AddAgent "<relative-agent-path>"
```

```bash
"<skill-root>/scripts/update-marketplace.sh" \
    --repo-root "<repo-root>" \
    --plugin-name "<plugin-name>" \
    --add-agent "<relative-agent-path>"
```

**To create a new plugin with a skill or agent:**

```powershell
& "<skill-root>/scripts/Update-Marketplace.ps1" `
    -RepoRoot "<repo-root>" `
    -NewPlugin `
    -PluginName "<plugin-name>" `
    -PluginDescription "<description>" `
    -PluginSource "<source-path>" `
    -AddSkill "<relative-skill-path>"
```

```bash
"<skill-root>/scripts/update-marketplace.sh" \
    --repo-root "<repo-root>" \
    --new-plugin \
    --plugin-name "<plugin-name>" \
    --plugin-description "<description>" \
    --plugin-source "<source-path>" \
    --add-skill "<relative-skill-path>"
```

Each invocation bumps the affected plugin's MINOR version and the marketplace
MINOR version automatically.

### Step 4 — Validate

After all changes are applied, validate the marketplace JSON against its schema:

```bash
npx --yes ajv-cli validate \
    -s .github/plugin/marketplace.schema.json \
    -d .github/plugin/marketplace.json
```

If validation fails, report the errors and do not commit the change.

### Step 5 — Present Results

Show the user:

1. A summary of items added and which plugins they were assigned to.
2. Any new plugins created.
3. Updated version numbers for affected plugins and the marketplace.
4. Validation result (pass/fail).

## Edge Cases

- **Skill directory exists but has no SKILL.md**: Skip it with a warning.
- **Agent file has no YAML frontmatter**: Derive the name from the filename
  and use the first paragraph as the description.
- **Plugin already contains the skill/agent**: Skip it — no duplicate entries,
  no version bump.
- **Empty marketplace.json**: Create the initial structure with the first
  plugin.

## Marketplace Schema Reference

Plugins in `marketplace.json` have this structure:

```json
{
  "name": "plugin-name",
  "source": "./.github/skills/plugin-name",
  "description": "What this plugin bundle does.",
  "version": "1.0.0",
  "skills": ["."],
  "agents": []
}
```

- `skills` array: Relative paths from the plugin source to skill directories.
  Use `"."` when the plugin source IS the skill directory.
- `agents` array: Relative paths from the plugin source to agent `.agent.md`
  files.
- Both arrays are append-only once an entry exists.
