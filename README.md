# plagueho.os

[![CI][ci-shield]][ci-url]
[![License][license-shield]][license-url]

Personal OS repository for Daniel Scott-Raynsford — agentic workflow
automation, GitHub Copilot agents, prompts, and reference documentation.

> **Looking for demos, learning pathways, and patterns?** Those have
> moved to **[PlagueHO/plagueho.learn](https://github.com/PlagueHO/plagueho.learn)**.

> **Looking for plugins and skills?** My agent plugin marketplace is at
> **[PlagueHO/skills](https://github.com/PlagueHO/skills)**. Add the
> marketplace to VS Code with:
>
> ```jsonc
> "chat.plugins.marketplaces": ["PlagueHO/skills"]
> ```

## Repository Structure

```text
plagueho.os/
├── .github/                    # GitHub configuration
│   ├── agents/                 # GitHub Copilot coding agents
│   ├── aw/                     # Agentic workflow definitions
│   ├── prompts/                # GitHub Copilot prompt files
│   ├── skills/                 # Repo-local skills (not distributed)
│   │   └── sensei/             # Git submodule (spboyer/sensei)
│   ├── instructions/           # Copilot instruction files
│   ├── workflows/              # GitHub Actions workflows
│   ├── ISSUE_TEMPLATE/         # Issue templates
│   ├── PULL_REQUEST_TEMPLATE.md
│   ├── CODEOWNERS
│   └── copilot-instructions.md
├── .vscode/                    # VS Code workspace settings
├── docs/                       # Reference documentation and guides
├── scripts/                    # Utility scripts (PowerShell, Python, Bash)
├── .gitignore
├── LICENSE
└── README.md
```

## Asset Categories

### 🎯 Repo-local Skills ([`.github/skills/`](.github/skills/))

Skills used only within this repository for automation and repo management.

| Skill | Location | Purpose |
|-------|----------|---------|
| `sensei` | [`.github/skills/sensei/`](.github/skills/sensei/) | Iterative skill-improvement workflow (git submodule — [spboyer/sensei](https://github.com/spboyer/sensei)) |

### 🤖 GitHub Copilot Agents ([`.github/agents/`](.github/agents/))

GitHub Copilot coding agents with custom instructions and behaviors tailored
for specific workflows or technologies.

### 💬 GitHub Copilot Prompts ([`.github/prompts/`](.github/prompts/))

Reusable `.prompt.md` files that can be invoked in GitHub Copilot Chat to
perform common tasks consistently.

### 📜 Scripts ([`scripts/`](scripts/))

Utility scripts organized by technology (PowerShell, Python, Bash) for common
development tasks.

### 📚 Documentation ([`docs/`](docs/))

Reference documentation, how-to guides, conventions, and cheat sheets.

> Demos, learning pathways, and patterns have moved to
> [PlagueHO/plagueho.learn](https://github.com/PlagueHO/plagueho.learn).

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
   - **New plugin or skill** — contribute to
     [PlagueHO/skills](https://github.com/PlagueHO/skills).
   - **Repo-local skill** — add to `.github/skills/`.
   - **Demos, patterns, or learning pathways** — contribute to
     [PlagueHO/plagueho.learn](https://github.com/PlagueHO/plagueho.learn).
   - **Other assets** — place in the appropriate `scripts/`, `docs/`,
     or `.github/prompts/` directory.
3. Run `pnpm lint:md` to verify markdown compliance.
4. Open a pull request using the provided template.
<!-- Badge reference links -->
[ci-shield]: https://img.shields.io/github/actions/workflow/status/PlagueHO/plagueho.os/continuous-integration.yml?branch=main&label=CI
[ci-url]: https://github.com/PlagueHO/plagueho.os/actions/workflows/continuous-integration.yml
[license-shield]: https://img.shields.io/github/license/PlagueHO/plagueho.os
[license-url]: https://github.com/PlagueHO/plagueho.os/blob/main/LICENSE
