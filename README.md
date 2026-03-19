# plagueho.os

[![CI][ci-shield]][ci-url]
[![License][license-shield]][license-url]

Organizational engineering assets for Daniel Scott-Raynsford. Includes
GitHub Copilot agents, prompts, scripts, patterns, learning pathways, and
reference documentation commonly used across repositories for software
development.

> **Looking for plugins and skills?** My agent plugin marketplace has moved
> to **[PlagueHO/skills](https://github.com/PlagueHO/skills)**. Add the
> marketplace to VS Code with:
>
> ```jsonc
> "chat.plugins.marketplaces": ["PlagueHO/skills"]
> ```

<p align="center">
  <img src="docs/images/overview.svg" alt="Repository content overview" width="840"/>
</p>

## The Squad — My AI Demo Factory

This repo is powered by [Squad](https://github.com/bradygaster/squad), an AI
agent team that lives in the repository and continuously builds bleeding-edge
demos. Cast from **The Matrix** universe, the squad autonomously discovers what
to build (via WorkIQ intelligence), builds it, tests it, and delivers
Build-keynote-quality demos daily.

| Agent | Role | Mission |
|-------|------|---------|
| 🏗️ **Neo** | Lead Architect | Architecture decisions, demo quality gate ("Would Satya demo this?") |
| 🔧 **Trinity** | Demo Engineer | Builds bleeding-edge Azure AI, Copilot, and .NET demos |
| 📝 **Morpheus** | DevRel & Evangelist | Narratives, talk tracks, and presentation content |
| 📊 **Oracle** | Intelligence Analyst | Mines WorkIQ for partner conversations and trending topics |
| 🔒 **Dozer** | SaaS & Multitenancy | ARB patterns, tenant isolation, Entra ID integration |
| 📋 **Scribe** | Session Logger | Records decisions, history, and team wisdom |
| 🔄 **Ralph** | Work Monitor | Heartbeat, triage, backlog management |
| 🤖 **@copilot** | Coding Agent | Auto-picks up well-defined tasks autonomously |

### How It Works

1. **Oracle** queries WorkIQ to identify what Daniel is discussing with partners
   and customers, then proposes demos aligned with those conversations.
2. A **daily GitHub Actions workflow** auto-creates a new demo issue each day.
3. **Neo** triages issues and assigns to the right squad member.
4. **Trinity** builds the demo, **Morpheus** writes the narrative, **Dozer**
   adds multitenancy patterns where relevant.
5. **Neo** reviews every demo PR against the quality bar: *"Would Satya demo
   this on stage at Build?"*

### Starting a Session

```bash
# In Copilot CLI
copilot --yolo
# Then type /agent and select Squad

# Or talk to the team directly
"Oracle, run an intelligence scan. What should we build next?"
"Trinity, build the demo for issue #11"
"Team, what's our status?"
```

See [`docs/workiq-intelligence-loop.md`](docs/workiq-intelligence-loop.md) for
the full intelligence gathering protocol.

## Demos ([`demos/`](demos/))

Build-keynote-quality demos organized by technology area. Every demo is
self-contained with README, source code, and deployment instructions.

| Category | Folder | Focus |
|----------|--------|-------|
| Azure AI | [`demos/azure-ai/`](demos/azure-ai/) | Azure AI Foundry, OpenAI, agents, MCP |
| GitHub Copilot | [`demos/github-copilot/`](demos/github-copilot/) | Extensions, custom agents, skills, MCP servers |
| .NET Aspire | [`demos/dotnet-aspire/`](demos/dotnet-aspire/) | Cloud-native distributed apps with AI |
| SaaS Multitenancy | [`demos/saas-multitenancy/`](demos/saas-multitenancy/) | Tenant isolation, Entra ID, ARB patterns |
| Bleeding Edge | [`demos/bleeding-edge/`](demos/bleeding-edge/) | Preview features, just-announced capabilities |

## Repository Structure

```text
PlagueHO-OS/
├── .github/                    # GitHub configuration
│   ├── agents/                 # GitHub Copilot coding agents (inc. Squad)
│   ├── prompts/                # GitHub Copilot prompt files
│   ├── skills/                 # Repo-local skills (not distributed)
│   │   └── sensei/             # Git submodule (spboyer/sensei)
│   ├── instructions/           # Copilot instruction files
│   ├── workflows/              # GitHub Actions workflows (inc. Squad automation)
│   ├── ISSUE_TEMPLATE/         # Issue templates
│   ├── PULL_REQUEST_TEMPLATE.md
│   ├── CODEOWNERS
│   └── copilot-instructions.md # Copilot custom instructions for this repo
├── .squad/                     # Squad AI team state (The Matrix cast)
│   ├── team.md                 # Roster — who's on the team
│   ├── routing.md              # Work routing rules
│   ├── decisions.md            # Shared brain — team decisions
│   ├── agents/                 # Agent charters and history
│   ├── casting/                # Persistent naming registry
│   └── identity/               # Current focus and team wisdom
├── .vscode/                    # VS Code workspace settings
│   ├── settings.json
│   └── extensions.json
├── demos/                      # Bleeding-edge demos (squad-built)
│   ├── azure-ai/               # Azure AI Foundry, OpenAI, agents
│   ├── github-copilot/         # Copilot extensions, agents, MCP
│   ├── dotnet-aspire/          # .NET Aspire cloud-native apps
│   ├── saas-multitenancy/      # SaaS patterns, ARB references
│   └── bleeding-edge/          # Preview and experimental features
├── docs/                       # Reference documentation and guides
├── learning-pathways/          # Technology learning pathways
├── patterns/                   # Reusable development patterns and templates
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
| `evaluate-pr-review-comments` | [`.github/skills/evaluate-pr-review-comments/`](.github/skills/evaluate-pr-review-comments/) | Evaluate and classify PR review comments with apply/consider/skip recommendations |
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

### 🏗️ Patterns ([`patterns/`](patterns/))

Reusable development patterns, templates, and architectural blueprints
organized by technology.

### 📚 Documentation ([`docs/`](docs/))

Reference documentation, how-to guides, conventions, and cheat sheets.

### 📖 Learning Pathways ([`learning-pathways/`](learning-pathways/))

Structured learning pathways for Microsoft technologies.

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
   - **Other assets** — place in the appropriate `scripts/`, `patterns/`,
     `docs/`, or `.github/prompts/` directory.
3. Run `pnpm lint:md` to verify markdown compliance.
4. Open a pull request using the provided template.
<!-- Badge reference links -->
[ci-shield]: https://img.shields.io/github/actions/workflow/status/PlagueHO/plagueho.os/continuous-integration.yml?branch=main&label=CI
[ci-url]: https://github.com/PlagueHO/plagueho.os/actions/workflows/continuous-integration.yml
[license-shield]: https://img.shields.io/github/license/PlagueHO/plagueho.os
[license-url]: https://github.com/PlagueHO/plagueho.os/blob/main/LICENSE
