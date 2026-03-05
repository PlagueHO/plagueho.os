# PlagueHO-OS

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

## Contributing

1. Fork or branch from `main`
2. Add your asset in the appropriate directory
3. Follow the style and documentation conventions for that asset type
4. Open a pull request using the provided template

