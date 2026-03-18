# Developer Environment

Developer environment plugin that scaffolds dotfiles repositories and synchronizes VS Code profiles across editions.

## What it does

Developer Environment automates environment setup tasks by:

- Scanning existing workspaces for shell, git, editor, and package configurations
- Scaffolding dotfiles template repositories with bootstrap installers
- Discovering VS Code profiles and extensions across Stable and Insiders editions
- Syncing extensions between editions with dry-run and selective sync support

## Skills

### `create-dotfiles-repo`

Activated when a user asks to create a dotfiles repo or export their configuration. Scans the workspace for config files, interviews the user for preferences, and scaffolds a dotfiles template repository in a GitHub Organization with bootstrap installers for multiple platforms.

### `vscode-profile-sync`

Activated when a user asks to sync VS Code profiles or copy profiles from Insiders. Discovers profiles across VS Code editions, diffs extensions, installs missing ones, and optionally removes extras. Supports dry-run mode and selective profile sync.
