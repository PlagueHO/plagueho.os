# Plugin Marketplace

This directory contains the VS Code agent plugin marketplace index for
**plagueho.os**. Plugin skills are defined under
[`../../plugins/`](../../plugins/) following the canonical
[github/copilot-plugins](https://github.com/github/copilot-plugins) layout.

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

## Repository Layout

```text
plugins/
├── <plugin-name>/
│   ├── README.md          # Plugin documentation
│   └── skills/
│       └── <skill-name>/
│           └── SKILL.md
.github/
├── plugin/
│   ├── marketplace.json   # This marketplace index
│   └── marketplace.schema.json
└── skills/                # Repo-local skills (not distributed)
    ├── sensei/            # Git submodule
    └── update-marketplace/
```

## Available Plugins

| Plugin | Skills | Description |
|--------|--------|-------------|
| [`azure-architecture-review`](../../plugins/azure-architecture-review/) | `review-aac-multitenant-guidance`, `review-aac-multitenant-doc` | Review Azure Architecture Center multitenant guidance for currency. |
| [`azure-infrastructure`](../../plugins/azure-infrastructure/) | `azure-github-managed-identity`, `update-avm-modules` | Provision Azure identities and manage Azure Verified Module versions. |
| [`content-and-learning`](../../plugins/content-and-learning/) | `ai-content-readiness-review`, `create-learning-pathway` | Review content for AI readiness and generate Microsoft technology learning pathways. |
| [`developer-environment`](../../plugins/developer-environment/) | `create-dotfiles-repo`, `vscode-profile-sync` | Scaffold dotfiles repos and sync VS Code profiles across editions. |
| [`dotnet-modernization`](../../plugins/dotnet-modernization/) | `dotnet-sdk-style-upgrade` | Convert legacy .NET project files to modern SDK-style format. |
| [`skill-lifecycle`](../../plugins/skill-lifecycle/) | `skill-creator`, `convert-prompt-to-skill`, `create-skill-from-pr` | Create, convert, and generate agent skills from prompts and pull requests. |
| [`suggest-awesome-github-copilot`](../../plugins/suggest-awesome-github-copilot/) | 4 suggest-awesome skills | Discover and install GitHub Copilot assets from the awesome-copilot repository. |

## Marketplace Schema

The marketplace index is validated against
[`marketplace.schema.json`](marketplace.schema.json). Run validation locally:

```bash
npx --yes ajv-cli validate \
  -s .github/plugin/marketplace.schema.json \
  -d .github/plugin/marketplace.json
```

## Adding a New Plugin

1. Create `plugins/<plugin-name>/skills/<skill-name>/SKILL.md`.
2. Add a plugin entry in [`marketplace.json`](marketplace.json) with
   `source: "./plugins/<plugin-name>"` and skills listed as
   `"./skills/<skill-name>"`.
3. Run the schema validation above to verify the entry.
4. Run the `update-marketplace` skill to auto-generate the plugin README:

   ```powershell
   & ".github/skills/update-marketplace/scripts/Update-Marketplace.ps1" `
       -RepoRoot "." -UpdateReadmes
   ```

   [`README.md`](../../README.md#available-plugins).
