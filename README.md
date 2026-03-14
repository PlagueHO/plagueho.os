# plagueho.os

[![CI][ci-shield]][ci-url]
[![License][license-shield]][license-url]

Organizational engineering assets for Daniel Scott-Raynsford, including GitHub Copilot agents, prompts, scripts, patterns, and reference documentation commonly used across repositories for software development.

<p align="center">
  <img src="docs/images/overview.svg" alt="Repository content overview" width="840"/>
</p>

## Repository Structure

```text
PlagueHO-OS/
├── .github/                    # GitHub configuration
│   ├── agents/                 # GitHub Copilot coding agents
│   ├── prompts/                # GitHub Copilot prompt files
│   ├── skills/                 # GitHub Copilot skill definitions
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

### 🎯 GitHub Copilot Skills ([`.github/skills/`](.github/skills/))

Modular GitHub Copilot skill definitions that can be attached to agents to provide specific capabilities.

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

Assets in this repository are intended to be copied into or referenced from other repositories. Where GitHub supports organizational-level configuration, the files in `.github/` follow those conventions.

## Plugin Marketplace

This repository doubles as a VS Code agent plugin marketplace. Skills defined in
[`.github/skills/`](.github/skills/) are exposed as installable agent plugins via
[`.github/plugin/marketplace.json`](.github/plugin/marketplace.json).

### Installing the Marketplace

Add `PlagueHO/plagueho.os` to the `chat.plugins.marketplaces` setting in your
VS Code `settings.json`:

```json
"chat.plugins.enabled": true,
"chat.plugins.marketplaces": [
    "PlagueHO/plagueho.os"
]
```

Then open the Extensions view (`Ctrl+Shift+X`), enter `@agentPlugins` in the search
field, and install any skills you want.

### Available Plugins

| Plugin | Description |
|--------|-------------|
| `azure-github-managed-identity` | Provision Azure Managed Identities with OIDC federation for passwordless GitHub Actions auth |
| `convert-prompt-to-skill` | Convert a `.prompt.md` file into a conformant Agent Skill (SKILL.md) |
| `create-dotfiles-repo` | Scaffold a dotfiles template repository from an existing workspace |
| `create-learning-pathway` | Generate structured Learning Pathway documents for Microsoft technologies (L100–L400) |
| `create-skill-from-pr` | Generate a reusable Agent Skill from a single-purpose Pull Request |
| `dotnet-sdk-style-upgrade` | Convert legacy .NET project files to modern SDK-style format |
| `skill-creator` | Create a new Agent Skill from a description following the agentskills.io specification |
| `suggest-awesome-github-copilot-agents` | Suggest and install Copilot agents from the awesome-copilot repository |
| `suggest-awesome-github-copilot-instructions` | Suggest and install Copilot instruction files from the awesome-copilot repository |
| `suggest-awesome-github-copilot-prompts` | Suggest Copilot prompt files from the awesome-copilot repository |
| `suggest-awesome-github-copilot-skills` | Suggest and install Copilot skills from the awesome-copilot repository |
| `update-avm-modules` | Update Azure Verified Modules (AVM) to their latest versions in Bicep files |
| `vscode-profile-sync` | Replicate VS Code Insiders profiles and extensions into VS Code stable |

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

1. Fork or branch from `main`
2. Add your asset in the appropriate directory
3. Follow the style and documentation conventions for that asset type
4. Open a pull request using the provided template
<!-- Badge reference links -->
[ci-shield]: https://img.shields.io/github/actions/workflow/status/PlagueHO/plagueho.os/continuous-integration.yml?branch=main&label=CI
[ci-url]: https://github.com/PlagueHO/plagueho.os/actions/workflows/continuous-integration.yml
[license-shield]: https://img.shields.io/github/license/PlagueHO/plagueho.os
[license-url]: https://github.com/PlagueHO/plagueho.os/blob/main/LICENSE
