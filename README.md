# plagueho.os

[![CI][ci-shield]][ci-url]
[![License][license-shield]][license-url]

Organizational engineering assets and VS Code agent plugin marketplace for
Daniel Scott-Raynsford. Includes GitHub Copilot agent plugins, prompts,
scripts, patterns, and reference documentation commonly used across
repositories for software development.

The plugin marketplace follows the canonical
[github/copilot-plugins](https://github.com/github/copilot-plugins) layout —
install plugins directly into GitHub Copilot Chat via VS Code.

<p align="center">
  <img src="docs/images/overview.svg" alt="Repository content overview" width="840"/>
</p>

## Quickstart

The fastest way to use these assets is through the **VS Code agent plugin
marketplace**. This gives you access to all the skills and agents directly
inside GitHub Copilot Chat.

### 1. Enable the marketplace

Add the following to your VS Code `settings.json`:

```json
"chat.plugins.enabled": true,
"chat.plugins.marketplaces": [
    "PlagueHO/plagueho.os"
]
```

### 2. Install plugins

Open the Extensions view (`Ctrl+Shift+X`), type `@agentPlugins` in the search
field, and install the plugins you want.

### 3. Use skills in Copilot Chat

Once installed, skills are automatically available in GitHub Copilot Chat.
For example:

- *"create a learning pathway for Azure AI Foundry"* — invokes the
  `create-learning-pathway` skill.
- *"suggest copilot skills"* — invokes the
  `suggest-awesome-github-copilot-skills` skill.
- *"update AVM modules"* — invokes the `update-avm-modules` skill.

### 4. Copy assets directly

You can also copy individual skills, agents, prompts, or scripts into your own
repositories. See [Asset Categories](#asset-categories) below for where each
type lives.

## Repository Structure

```text
PlagueHO-OS/
├── plugins/                    # Agent plugin bundles (canonical layout)
│   ├── <plugin-name>/
│   │   ├── README.md           # Plugin documentation
│   │   └── skills/
│   │       └── <skill-name>/
│   │           └── SKILL.md
│   └── ...
├── .github/                    # GitHub configuration
│   ├── agents/                 # GitHub Copilot coding agents
│   ├── plugin/                 # Marketplace index and schema
│   │   ├── marketplace.json
│   │   └── marketplace.schema.json
│   ├── prompts/                # GitHub Copilot prompt files
│   ├── skills/                 # Repo-local skills (not distributed)
│   │   ├── sensei/             # Git submodule (spboyer/sensei)
│   │   └── update-marketplace/ # Marketplace management automation
│   ├── workflows/              # GitHub Actions workflows
│   ├── ISSUE_TEMPLATE/         # Issue templates
│   ├── PULL_REQUEST_TEMPLATE.md
│   ├── CODEOWNERS
│   └── copilot-instructions.md # Copilot custom instructions for this repo
├── .vscode/                    # VS Code workspace settings
│   ├── settings.json
│   └── extensions.json
├── docs/                       # Reference documentation and guides
├── patterns/                   # Reusable development patterns and templates
├── scripts/                    # Utility scripts (PowerShell, Python, Bash, etc.)
├── .gitignore
├── LICENSE
└── README.md
```

## Asset Categories

### 🔌 Agent Plugins ([`plugins/`](plugins/))

Installable plugin bundles following the canonical
[github/copilot-plugins](https://github.com/github/copilot-plugins) layout.
Each plugin has its own directory with a README and one or more skills.

### 🎯 Repo-local Skills ([`.github/skills/`](.github/skills/))

Skills used only within this repository (e.g., `sensei`, `update-marketplace`).
These are not distributed via the plugin marketplace.

### 🤖 GitHub Copilot Agents ([`.github/agents/`](.github/agents/))

GitHub Copilot coding agents with custom instructions and behaviors tailored for specific workflows or technologies.

### 💬 GitHub Copilot Prompts ([`.github/prompts/`](.github/prompts/))

Reusable `.prompt.md` files that can be invoked in GitHub Copilot Chat to perform common tasks consistently.

### 📜 Scripts ([`scripts/`](scripts/))

Utility scripts organized by technology (PowerShell, Python, Bash) for common development tasks.

### 🏗️ Patterns ([`patterns/`](patterns/))

Reusable development patterns, templates, and architectural blueprints organized by technology.

### 📚 Documentation ([`docs/`](docs/))

Reference documentation, how-to guides, conventions, and cheat sheets.

## Usage

Assets in this repository are intended to be used in two ways:

1. **Install via the plugin marketplace** — add the marketplace to VS Code
   and install plugin bundles directly into Copilot Chat
   (see [Quickstart](#quickstart)).
2. **Copy assets directly** — copy individual skills, prompts, or scripts
   into your own repositories.

Where GitHub supports organizational-level configuration, the files in
`.github/` follow those conventions.

## Plugin Marketplace

This repository serves as a VS Code agent plugin marketplace following the
canonical [github/copilot-plugins](https://github.com/github/copilot-plugins)
layout. Plugin skills live under [`plugins/`](plugins/) and are indexed by
[`.github/plugin/marketplace.json`](.github/plugin/marketplace.json).

See [Quickstart](#quickstart) above for installation instructions.

### Available Plugins

Each plugin bundles related skills together. Install a plugin to get all the
capabilities in its bundle. Click a plugin name to view its full README.

| Plugin | Description |
|--------|-------------|
| [`azure-architecture-review`](plugins/azure-architecture-review/) | Review Azure Architecture Center multitenant guidance for currency. |
| [`azure-infrastructure`](plugins/azure-infrastructure/) | Provision Azure identities and manage Azure Verified Module versions. |
| [`content-and-learning`](plugins/content-and-learning/) | Review content for AI readiness and generate Microsoft technology learning pathways. |
| [`developer-environment`](plugins/developer-environment/) | Scaffold dotfiles repos and sync VS Code profiles across editions. |
| [`dotnet-modernization`](plugins/dotnet-modernization/) | Convert legacy .NET project files to modern SDK-style format. |
| [`skill-lifecycle`](plugins/skill-lifecycle/) | Create, convert, and generate agent skills from prompts and pull requests. |
| [`suggest-awesome-github-copilot`](plugins/suggest-awesome-github-copilot/) | Discover and install GitHub Copilot assets from the awesome-copilot repository. |

### Repo-local Skills

The following skills are used only within this repository and are **not**
distributed via the plugin marketplace:

| Skill | Location | Purpose |
|-------|----------|---------|
| `sensei` | [`.github/skills/sensei/`](.github/skills/sensei/) | Iterative skill-improvement workflow (git submodule — [spboyer/sensei](https://github.com/spboyer/sensei)) |
| `update-marketplace` | [`.github/skills/update-marketplace/`](.github/skills/update-marketplace/) | Discover unassigned skills, update `marketplace.json`, and generate plugin READMEs |

## Agentic Workflows

This repository uses [GitHub Agentic Workflows](https://github.github.com/gh-aw/) (`gh aw`)
to automate routine maintenance tasks via AI-powered GitHub Actions.

### Workflows

| Workflow | Schedule | Description |
|----------|----------|-------------|
| [`update-foundry-model-catalog`](.github/workflows/update-foundry-model-catalog.md) | Daily | Queries the Microsoft Azure AI Foundry model catalog via the Azure MCP server and creates a pull request updating [`docs/foundry-model-catalog.md`](docs/foundry-model-catalog.md) with the latest models and their regional availability. |

### Requirements

#### Tools

- **`gh aw` extension** — Install the GitHub Agentic Workflows CLI extension:

  ```bash
  gh extension install github/gh-aw
  ```

- **GitHub Copilot** — The workflows use the `copilot` engine. A valid GitHub Copilot
  subscription is required on the repository or organisation.

#### Copilot Engine Authentication

The `copilot` engine requires a **`COPILOT_GITHUB_TOKEN`** repository secret so
that GitHub Actions can authenticate with GitHub Copilot at runtime.

##### Creating the token

1. [Create a **fine-grained Personal Access Token**](https://github.com/settings/personal-access-tokens/new?name=COPILOT_GITHUB_TOKEN&description=GitHub+Agentic+Workflows+-+Copilot+engine+authentication&user_copilot_requests=read)
   with **Copilot** → `read` permission.
1. Add the secret to the repository using the `gh aw` CLI:

   ```bash
   gh aw secrets set COPILOT_GITHUB_TOKEN --value "<your-github-pat>"
   ```

   Alternatively, go to your repository **Settings → Secrets and variables →
   Actions**, click **New repository secret**, set the name to
   `COPILOT_GITHUB_TOKEN`, and paste the token value.

> **Tip:** If you store the secret at the **organisation** level, ensure the
> repository has been granted access under **Settings → Secrets → Repository
> access**. Environment-level secrets are only available when the job specifies that
> environment.

| Secret | Description |
|--------|-------------|
| `COPILOT_GITHUB_TOKEN` | Fine-grained PAT with Copilot `read` permission for the Copilot CLI engine |

#### Azure OIDC Authentication

The Foundry model catalog workflow authenticates to Azure using
[OpenID Connect (OIDC) federated credentials](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-azure)
— no client secret is stored in the repository. The workflow requests a short-lived
`id-token` from GitHub's OIDC provider, which Azure validates against a federated
credential configured on the Entra ID application registration.

##### 1. Create a Federated Credential

In the Azure portal (or via CLI), add a **Federated credential** to your Entra ID
app registration:

| Field | Value |
|-------|-------|
| **Federated credential scenario** | GitHub Actions deploying Azure resources |
| **Organization** | `PlagueHO` |
| **Repository** | `plagueho.os` |
| **Entity type** | Branch (`main`) |
| **Subject identifier** | `repo:PlagueHO/plagueho.os:ref:refs/heads/main` |

##### 2. Configure Repository Secrets

Add the following [repository secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets):

| Secret | Description |
|--------|-------------|
| `AZURE_TENANT_ID` | Entra ID (Azure AD) tenant ID |
| `AZURE_CLIENT_ID` | Application (client) ID with the federated credential |
| `AZURE_SUBSCRIPTION_ID` | Azure subscription ID scoping the Foundry API calls |

> **Note:** `AZURE_CLIENT_SECRET` is **not** required. The `id-token: write`
> permission in the workflow enables GitHub Actions to mint an OIDC token that Azure
> validates via the federated credential trust.

The application registration needs at minimum the **Reader** role on the subscription,
and **Azure AI Developer** (or equivalent) access to query the Foundry model catalog.

#### Compiling Workflows

Agentic workflow `.md` files must be compiled to GitHub Actions YAML (`.lock.yml`)
before they can run. After creating or modifying any workflow, run:

```bash
# Compile all workflows
gh aw compile

# Compile a specific workflow
gh aw compile update-foundry-model-catalog
```

The generated `.lock.yml` files are committed alongside the `.md` source files and
must be kept in sync.

### Running Manually

Trigger any agentic workflow manually from the GitHub Actions tab, or via the CLI:

```bash
gh workflow run update-foundry-model-catalog.lock.yml
```

## Contributing

1. Fork or branch from `main`.
2. Add your asset in the appropriate directory:
   - **New plugin skill** — create
     `plugins/<plugin-name>/skills/<skill-name>/SKILL.md`.
   - **New plugin** — create the plugin directory under `plugins/`, add a
     `README.md` and `skills/` subdirectory, then add a plugin entry in
     [`.github/plugin/marketplace.json`](.github/plugin/marketplace.json).
   - **Repo-local skill** — add to `.github/skills/`.
   - **Other assets** — place in the appropriate `scripts/`, `patterns/`,
     `docs/`, or `.github/prompts/` directory.
3. Run `pnpm lint:md` to verify markdown compliance.
4. Open a pull request using the provided template.
<!-- Badge reference links -->
[ci-shield]: https://img.shields.io/github/actions/workflow/status/PlagueHO/plagueho.os/continuous-integration.yml?branch=main&label=CI
[ci-url]: https://github.com/PlagueHO/plagueho.os/actions/workflows/continuous-integration.yml
[license-shield]: https://img.shields.io/github/license/PlagueHO/plagueho.os
[license-url]: https://github.com/PlagueHO/plagueho.os/blob/main/LICENSE
