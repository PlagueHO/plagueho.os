# Suggest Awesome GitHub Copilot

Discovery plugin that suggests and installs GitHub Copilot assets from the [awesome-copilot](https://github.com/PlagueHO/awesome-copilot) community repository.

## What it does

Suggest Awesome GitHub Copilot connects to the curated awesome-copilot list to:

- Browse community-contributed agents, instructions, prompts, and skills
- Detect duplicates and outdated versions already installed locally
- Install selected assets directly into your workspace
- Keep local Copilot customizations up to date with the community

## Skills

### `suggest-awesome-github-copilot-agents`

Activated when a user asks to find or suggest Copilot agents. Fetches the agents list from the awesome-copilot repository, compares against locally installed agents, and presents suggestions with options to install.

### `suggest-awesome-github-copilot-instructions`

Activated when a user asks to find or suggest Copilot instructions. Fetches the instructions list from the awesome-copilot repository, detects duplicates and outdated local versions, and offers installation.

### `suggest-awesome-github-copilot-prompts`

Activated when a user asks to find or suggest Copilot prompts. Fetches the prompts list from the awesome-copilot repository, detects duplicates and outdated local versions, and offers installation.

### `suggest-awesome-github-copilot-skills`

Activated when a user asks to find or suggest Copilot skills. Fetches the skills list from the awesome-copilot repository, detects duplicates and outdated local versions, and offers installation.
