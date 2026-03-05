# Prompts

This directory contains GitHub Copilot prompt files (`.prompt.md`) for use across repositories.

## What are Copilot Prompt Files?

Prompt files are reusable `.prompt.md` files that define instructions and context for GitHub Copilot. They can be invoked directly in Copilot Chat to perform specific tasks consistently.

## Structure

```
prompts/
├── README.md              # This file
└── *.prompt.md            # Individual prompt files
```

## Usage

To use a prompt file:

1. Copy the desired `.prompt.md` file to your repository's `.github/prompts/` directory
2. In GitHub Copilot Chat, type `/` and select the prompt by name

## Adding a New Prompt

1. Create a new `.prompt.md` file in this directory
2. Include a frontmatter header with `name` and `description` fields
3. Write the prompt body with clear instructions and any required context variables
4. Add the prompt to the list below

## Available Prompts

| Prompt | Description |
|--------|-------------|
| *(none yet — add your first prompt!)* | |
