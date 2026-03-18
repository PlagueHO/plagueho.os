# Skill Lifecycle

Skill authoring plugin that creates, converts, and generates GitHub Copilot Agent Skills from various sources.

## What it does

Skill Lifecycle streamlines agent skill development by:

- Scaffolding new skills from a description, following the [agentskills.io](https://agentskills.io) specification
- Converting existing `.prompt.md` files into fully conformant `SKILL.md` definitions
- Extracting reusable skills from single-purpose pull requests
- Generating YAML frontmatter, directory structure, and validation scripts

## Skills

### `skill-creator`

Activated when a user asks to create a new skill or scaffold a skill from scratch. Interviews the user for a description and goal, generates a `SKILL.md` with YAML frontmatter following the agentskills.io specification, scaffolds the directory structure, and validates the result.

### `convert-prompt-to-skill`

Activated when a user asks to convert a prompt to a skill or upgrade a `.prompt.md` file. Evaluates the prompt for suitability, maps its content to the skill specification, and scaffolds the full skill directory with `SKILL.md` and supporting scripts.

### `create-skill-from-pr`

Activated when a user asks to create a skill from a pull request. Reads the PR diff via GitHub MCP tools, identifies the reusable refactoring or tech debt pattern, and generates a skill definition that can be applied to similar codebases.
