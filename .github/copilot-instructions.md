# GitHub Copilot Instructions

These instructions apply to all GitHub Copilot interactions in this repository.

## Repository Purpose

This is an organizational assets repository for Daniel Scott-Raynsford
(PlagueHO). It stores GitHub Copilot agents, prompts, scripts, documents,
patterns, learning pathways, and other assets commonly used across repositories
for software development. Plugins and skills are maintained separately in
[PlagueHO/skills](https://github.com/PlagueHO/skills).

## General Coding Principles

- Write clean, readable, and maintainable code
- Follow the principle of least privilege for security
- Prefer explicit over implicit
- Write self-documenting code with meaningful names
- Keep functions small and focused on a single responsibility
- Handle errors explicitly and gracefully

## Code Style

- Use consistent indentation (2 spaces for YAML/JSON, 4 spaces for PowerShell/Python)
- Include a newline at the end of every file
- Avoid trailing whitespace
- Keep lines under 120 characters where possible

## Documentation

- All scripts should include a header comment explaining their purpose, parameters, and usage
- All patterns should include a README explaining when and how to use them
- Prompts should include a description of their purpose and expected inputs/outputs

## Security

- Never commit secrets, passwords, API keys, or other sensitive information
- Use environment variables or secret management tools for sensitive values
- Validate all inputs, especially when processing external data

## Asset Organization

- **Agents**: GitHub Copilot coding agents go in `.github/agents/`
- **Prompts**: GitHub Copilot prompt files go in `.github/prompts/`
- **Skills**: GitHub Copilot skill definitions go in `.github/skills/`
- **Scripts**: Utility scripts organized by technology in `scripts/`
- **Patterns**: Reusable development patterns in `patterns/`
- **Docs**: Reference documentation in `docs/`
