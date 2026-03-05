# Skills

This directory contains GitHub Copilot skill definitions for use across repositories.

## What are Copilot Skills?

GitHub Copilot skills are specific capabilities or behaviors that can be attached to agents. They define discrete functions or actions that a Copilot agent can perform, enabling modular and reusable AI behaviors.

## Structure

```
skills/
├── README.md        # This file
└── *.md             # Individual skill definition files
```

## Usage

Skills stored here can be referenced by agents in `.github/agents/` or copied into other repositories. Skills typically define:

- A specific task or function (e.g., "generate unit tests", "review code for security issues")
- The expected inputs and outputs
- Any tools or APIs the skill requires

## Adding a New Skill

1. Create a new `.md` file in this directory
2. Document the skill's purpose, inputs, outputs, and any dependencies
3. Add the skill to the table below

## Available Skills

| Skill | Description |
|-------|-------------|
| *(none yet — add your first skill!)* | |
