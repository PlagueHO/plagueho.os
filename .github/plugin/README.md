# Plugin Marketplace

This directory contains the VS Code agent plugin marketplace index for
**plagueho.os**. Skills and agents defined in
[`../.github/skills/`](../skills/) and [`../.github/agents/`](../agents/) are
bundled into installable plugins described by
[`marketplace.json`](marketplace.json).

## Setup

Add the marketplace to your VS Code `settings.json`:

```json
"chat.plugins.enabled": true,
"chat.plugins.marketplaces": [
    "PlagueHO/plagueho.os"
]
```

Then open the Extensions view (`Ctrl+Shift+X`), type `@agentPlugins`, and
install the plugins you need.

## Available Plugins

### suggest-awesome-github-copilot

Discover and install GitHub Copilot assets from the
[awesome-copilot](https://github.com/PlagueHO/awesome-copilot) repository.

| Skill | Purpose |
|-------|---------|
| `suggest-awesome-github-copilot-agents` | Suggest agent definitions from the awesome-copilot list |
| `suggest-awesome-github-copilot-instructions` | Suggest custom instructions from the awesome-copilot list |
| `suggest-awesome-github-copilot-prompts` | Suggest prompt files from the awesome-copilot list |
| `suggest-awesome-github-copilot-skills` | Suggest skill definitions from the awesome-copilot list |

### skill-lifecycle

Create, convert, validate, and iteratively improve agent skills.

| Skill | Purpose |
|-------|---------|
| `skill-creator` | Scaffold a new skill from scratch |
| `convert-prompt-to-skill` | Convert an existing `.prompt.md` file into a skill |
| `create-skill-from-pr` | Generate a skill definition from a pull request |
| `sensei` | Iterative skill-improvement workflow (git submodule — [spboyer/sensei](https://github.com/spboyer/sensei)) |

### azure-infrastructure

Provision Azure identities and manage Azure Verified Module versions.

| Skill | Purpose |
|-------|---------|
| `azure-github-managed-identity` | Create Azure managed identities for GitHub Actions OIDC |
| `update-avm-modules` | Update Azure Verified Module references to latest versions |

### azure-architecture-review

Review Azure Architecture Center multitenant guidance for currency.

| Skill / Agent | Purpose |
|---------------|---------|
| `review-aac-multitenant-guidance` | Review AAC multitenant guidance documents |
| `review-aac-multitenant-doc` | Review a specific AAC multitenant document |
| `saas-startups-multitenancy-and-isv-arb-reviewer` (agent) | Automated reviewer agent for multitenant architecture |

### content-and-learning

Review content for AI readiness and generate Microsoft technology learning
pathways.

| Skill | Purpose |
|-------|---------|
| `ai-content-readiness-review` | Assess content readiness for AI consumption |
| `create-learning-pathway` | Generate a structured learning pathway for a Microsoft technology |

### developer-environment

Scaffold dotfiles repos and sync VS Code profiles across editions.

| Skill | Purpose |
|-------|---------|
| `create-dotfiles-repo` | Scaffold a new dotfiles repository |
| `vscode-profile-sync` | Sync VS Code profiles between editions (Stable, Insiders, etc.) |

### dotnet-modernization

Convert legacy .NET project files to modern SDK-style format.

| Skill | Purpose |
|-------|---------|
| `dotnet-sdk-style-upgrade` | Upgrade a legacy `.csproj` / `.vbproj` to SDK-style |

### marketplace-management

Discover unassigned skills and agents and maintain the marketplace index.

| Skill | Purpose |
|-------|---------|
| `update-marketplace` | Scan for skills/agents not yet listed in `marketplace.json` and add them |

## Marketplace Schema

The marketplace index is validated against
[`marketplace.schema.json`](marketplace.schema.json). You can run validation
locally:

```bash
npx --yes ajv-cli validate \
  -s .github/plugin/marketplace.schema.json \
  -d .github/plugin/marketplace.json
```

## Adding a New Plugin

1. Create the skill(s) under `.github/skills/<skill-name>/`.
2. Add a new plugin entry (or extend an existing one) in
   [`marketplace.json`](marketplace.json).
3. Run the schema validation above to verify the entry.
4. Update the plugin table in the root
   [`README.md`](../../README.md#available-plugins).
