# Agents

This directory contains GitHub Copilot coding agents for use across repositories.

## What are Copilot Agents?

GitHub Copilot coding agents are configured via YAML files in this directory. Each agent defines a specialized AI assistant with custom instructions, tools, and behaviors tailored to a specific development workflow or technology.

## Structure

```text
agents/
├── README.md        # This file
└── *.md             # Individual agent definition files
```

## Usage

Agents stored here can be referenced in any repository that uses this organizational assets repo. To use an agent:

1. Ensure the agent file is present in your repository's `.github/agents/` directory (copy from here or reference directly)
2. Invoke the agent via GitHub Copilot Chat using `@agent-name`

## Adding a New Agent

1. Create a new `.md` file in this directory
2. Follow the frontmatter schema: include `name`, `description`, and `instructions` fields
3. Add the agent to the list below

## Available Agents

| Agent | Description |
|-------|-------------|
| *(none yet — add your first agent!)* | |
