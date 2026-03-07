# plagueho.os

[![CI][ci-shield]][ci-url]
[![License][license-shield]][license-url]

Organizational engineering assets for Daniel Scott-Raynsford, including GitHub Copilot agents, prompts, scripts, patterns, and reference documentation commonly used across repositories for software development.

## Repository Structure

```
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

#### GitHub Secrets

The Foundry model catalog workflow authenticates to Azure using an Entra ID service
principal. Configure the following [repository secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets):

| Secret | Description |
|--------|-------------|
| `AZURE_TENANT_ID` | Entra ID (Azure AD) tenant ID |
| `AZURE_CLIENT_ID` | Service principal application (client) ID |
| `AZURE_CLIENT_SECRET` | Service principal client secret |
| `AZURE_SUBSCRIPTION_ID` | Azure subscription ID scoping the Foundry API calls |

The service principal needs at minimum the **Reader** role on the subscription, and
**Azure AI Developer** (or equivalent) access to query the Foundry model catalog.

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
