---
name: create-skill-from-pr

description:
  Generate a new GitHub Copilot Agent Skill from a GitHub Pull Request.
  Use when asked to create a reusable refactoring or tech debt remediation
  skill from a PR. The PR must represent a single, well-defined refactoring
  or tech debt task. If the PR contains multiple unrelated changes, stop
  and ask the user for guidance.

metadata:
  author: plagueho.os
  version: "1.1"
  reference: https://github.com/PlagueHO/plagueho.os/

compatibility:
  - GitHub Copilot
  - GitHub Copilot CLI

argument-hint: Provide a GitHub Pull Request reference (e.g., `owner/repo#123` or full URL) that performs a single refactoring or tech debt remediation task. I will analyze the PR and generate a reusable Agent Skill based on its changes.

user-invocable: true
---

# Create a Reusable Skill from a GitHub Pull Request

This skill analyzes a GitHub Pull Request that performs a **single refactoring
or tech debt remediation task** and generates a new, standalone Agent Skill
folder — including `SKILL.md` and any supporting bundled assets — that can be
applied to other repositories or projects to repeat the same transformation.

The generated skill follows the [Agent Skills specification](https://agentskills.io/specification)
and the conventions documented in this repository's
[skills README](../README.md).

## Prerequisites

- The user must provide a GitHub PR reference (e.g., `owner/repo#123` or a full
  PR URL).
- Access to the GitHub MCP Server tools (`get_pull_request`,
  `get_pull_request_diff`, `get_pull_request_files`) or equivalent ability to
  read the PR title, description, commits, and diff.

## Process

### Step 1 — Retrieve PR Metadata

1. Use `get_pull_request` (or read the PR page) to collect:
   - Title and description
   - Labels and linked issues
   - Branch names
2. Use `get_pull_request_files` to obtain the list of changed files.
3. Use `get_pull_request_diff` to obtain the full diff.

### Step 2 — Validate PR Scope

Analyze the PR to determine whether it represents a **single, well-defined
refactoring or tech debt remediation task**.

**STOP and ask the user for guidance** if any of the following are true:

- The PR mixes unrelated changes (e.g., a dependency upgrade *and* a code style
  migration in the same PR).
- The PR is a feature addition, bug fix, or behavioral change rather than a
  refactoring or tech debt task.
- The PR description is vague or missing and the diff does not clearly indicate
  a single repeatable pattern.
- The diff is so large or varied that multiple distinct skills would be needed to
  describe it.

When stopping, explain:

- What types of changes were detected.
- Why they cannot be combined into a single focused skill.
- Ask the user which subset of changes to focus on.

### Step 3 — Identify the Transformation Pattern

From the validated PR, extract:

1. **Goal** — A one-sentence summary of what the refactoring achieves
   (e.g., *"Replace deprecated `HttpClientFactory` calls with the new
   `IHttpClientFactory` dependency-injection pattern."*).
2. **Trigger / detection criteria** — How to identify code that needs this
   transformation (e.g., files matching a glob, specific import statements,
   API usage patterns, naming conventions).
3. **Step-by-step transformation** — The ordered sequence of mechanical changes
   applied in the PR. Express each step as an actionable instruction with
   before/after examples lifted directly from the diff.
4. **Edge cases and exceptions** — Any non-obvious decisions visible in the diff
   (e.g., conditional handling when a certain parameter is present, files that
   were intentionally skipped).
5. **Validation** — How to verify the transformation was applied correctly
   (e.g., build commands, lint commands, test commands observed in the PR or
   CI checks).
6. **Bundled assets** — Determine whether the skill benefits from any of
   the optional asset types described in
   [Bundled Assets (Step 3a)](#step-3a--plan-bundled-assets).

### Step 3a — Plan Bundled Assets

Review the PR diff and decide whether any of the following should be created
alongside `SKILL.md`. Only include assets that genuinely help the agent perform
the transformation; do not add them for the sake of completeness.

| Directory | Purpose | When to include |
|-----------|---------|-----------------|
| `scripts/` | Executable automation (shell, PowerShell, Python) | The PR uses or would benefit from a helper script to automate a mechanical step (e.g., bulk renames, AST transforms, API calls) |
| `references/` | Documentation loaded into agent context | The transformation has detailed background info, API reference, or a long workflow (> 5 steps) that would push `SKILL.md` over 500 lines |
| `assets/` | Static files used as-is in output | The PR produces or consumes static artefacts (images, config baselines, report templates) |
| `templates/` | Starter code the agent customizes per project | The PR introduces a boilerplate file that varies by project (e.g., a config template, Dockerfile scaffold) |

Ask the user: *"Should I include any helper scripts, reference docs, static
assets, or templates alongside the skill? I recommend: `<your suggestions>`"*

### Step 4 — Generate the Skill

Create the full skill directory using the structure defined in the
[Output Format](#output-format) section. The skill must:

- Be **self-contained** — a reader with no knowledge of the original PR should
  be able to follow it.
- Use **concrete before/after code examples** extracted from the PR diff to
  illustrate each step.
- Include only the tools and commands that are necessary.
- Avoid referencing the source PR in the instructions body (the attribution
  goes in the metadata section only).
- Include an `allowed-tools` frontmatter field **only** when the skill requires
  specific tools beyond the defaults (see [Frontmatter Reference](#frontmatter-reference)).
- Keep the `SKILL.md` body **under 500 lines**. If the transformation is
  complex, split detailed reference material into `references/` files and link
  to them from the main body.

### Step 5 — Determine Skill Placement

Ask the user where they want the skill saved. Suggest:

- **Project skill**: `.github/skills/<skill-name>/SKILL.md` in the current repo.
- **Personal skill**: `~/.copilot/skills/<skill-name>/SKILL.md` for cross-project
  use.

Derive `<skill-name>` from the goal identified in Step 3 (lowercase,
hyphen-separated, 3–5 words, max 64 characters). Confirm the name with the user
before writing.

### Step 6 — Write and Verify

1. Create the skill directory at the agreed location.
2. Write the `SKILL.md` file.
3. Write any planned bundled assets (`scripts/`, `references/`, `assets/`,
   `templates/`) into their respective subdirectories.
4. Run the [Validation Checklist](#validation-checklist) against the generated
   skill.
5. Present a summary to the user for review, including:
   - The generated directory tree
   - A brief description of each file created
   - Any decisions or trade-offs made during generation

## Output Format

### Directory Structure

```text
<skill-name>/
├── SKILL.md                 # Required — main instructions
├── scripts/                 # Optional — executable automation
│   └── <script-name>.sh
├── references/              # Optional — docs loaded into context
│   └── <reference-name>.md
├── assets/                  # Optional — static files used as-is
│   └── <asset-name>.ext
└── templates/               # Optional — starter code the agent customizes
    └── <template-name>.ext
```

### SKILL.md Template

The generated `SKILL.md` must follow this template:

````markdown
---
name: <skill-name>
description: >
  <Clear description of what the skill does and when to use it.
  Include trigger keywords for agent discovery. 10–1024 characters.>
# Optional — restrict which tools the agent may use with this skill.
# Omit this field entirely to allow the agent to use any available tool.
# allowed-tools:
#   - read_file
#   - grep_search
#   - replace_string_in_file
#   - run_in_terminal

metadata:
  author: <author or org>
  version: "<semver>"
  source-pr: "<owner/repo#number>"
  generated-by: create-skill-from-pr
---

# <Skill Title>

<One-paragraph description of the refactoring goal, why it matters, and the
expected outcome after applying it.>

## Detection

How to identify files and code that require this transformation:

- File patterns: `<glob patterns>`
- Code patterns: `<search terms, regex, or AST patterns>`

## Steps

1. **<Step title>**

   <Instruction>

   **Before:**

   ```<lang>
   <original code from PR>
   ```

   **After:**

   ```<lang>
   <transformed code from PR>
   ```

2. **<Step title>**

   <Instruction with before/after if applicable>

<!-- Repeat for each distinct step in the transformation. -->
<!-- For workflows exceeding 5-7 steps, move detailed sub-steps into
     references/<topic>.md and link here. -->

## Edge Cases

- <Description of an edge case and how to handle it.>

## Validation

1. <Command or check to verify correctness, e.g., build, lint, test.>
2. <Additional verification steps if any.>

## Requirements

- <Any tooling, runtime, or access requirements.>
````

### Frontmatter Reference

| Field | Required | Constraints |
|-------|----------|-------------|
| `name` | Yes | Lowercase, hyphens for spaces, max 64 chars, must match folder name |
| `description` | Yes | 10–1024 characters. State **what**, **when**, and include **keywords** |
| `allowed-tools` | No | YAML list of tool names the skill may use. Omit to allow all tools |
| `metadata.author` | No | Author name or organization |
| `metadata.version` | No | Semantic version string (e.g., `"1.0"`) |
| `metadata.source-pr` | No | Original PR reference (e.g., `owner/repo#123`) |
| `metadata.generated-by` | No | Set to `create-skill-from-pr` for traceability |

### Bundled Asset Guidelines

- **Scripts** (`scripts/`): Include a comment header with purpose and usage.
  Make scripts executable-safe (handle missing dependencies gracefully).
  Prefer cross-platform approaches or provide variants for major platforms.
- **References** (`references/`): Plain Markdown files providing detailed
  documentation, API references, or extended workflow steps that would push
  `SKILL.md` past 500 lines. Link to them from the main body with relative
  paths.
- **Assets** (`assets/`): Static files consumed or produced by the
  transformation (config baselines, image references, report templates). Keep
  each file under 5 MB.
- **Templates** (`templates/`): Starter code that the agent copies and
  customizes per project. Include placeholder comments (e.g.,
  `<!-- TODO: replace -->`) to mark spots the agent should fill in.

## Validation Checklist

After generating the skill, verify:

- [ ] Folder name is lowercase with hyphens, max 64 characters
- [ ] `name` field matches folder name exactly
- [ ] `description` is 10–1024 characters and explains what and when
- [ ] `description` includes trigger keywords for agent discovery
- [ ] `SKILL.md` body is under 500 lines
- [ ] All bundled assets are under 5 MB each
- [ ] No hardcoded credentials, secrets, or internal URLs
- [ ] All resource references use relative paths from skill root
- [ ] Before/after code examples are present for each transformation step
- [ ] Edge cases are documented
- [ ] Validation commands are included

## Important Rules

- **Single responsibility**: Each generated skill must address exactly one
  refactoring or tech debt pattern. Never combine multiple patterns.
- **No behavioral changes**: The skill must describe a transformation that
  preserves existing behavior. If the PR introduced behavioral changes, exclude
  those parts and note the exclusion.
- **Concrete examples over abstract rules**: Always include before/after code
  snippets from the actual PR diff. Abstract descriptions alone are not
  sufficient.
- **Idempotent guidance**: The skill's steps should be safe to run on code that
  has already been transformed (i.e., it should detect and skip already-migrated
  code).
- **Security**: Do not include secrets, credentials, or internal URLs from the
  source PR in the generated skill.
- **Size discipline**: Keep `SKILL.md` under 500 lines. Split large content
  into `references/` files. Keep bundled assets under 5 MB each.

## Example

A user says: *"Create a skill from PlagueHO/my-project#42"*

1. You retrieve PR #42, which renames all `.test.js` files to `.spec.js` and
   updates corresponding import paths.
2. You confirm it is a single refactoring task.
3. You identify that a helper script would speed up bulk renames — you suggest
   including `scripts/rename-tests.sh`.
4. You generate a skill named `rename-test-to-spec` with this structure:

   ```text
   rename-test-to-spec/
   ├── SKILL.md
   └── scripts/
       └── rename-tests.sh
   ```

5. The `SKILL.md` contains:
   - **Frontmatter**: `name`, `description`, and `metadata` with `source-pr`
   - **Detection**: files matching `**/*.test.js`
   - **Step 1**: Rename `*.test.js` → `*.spec.js`
   - **Step 2**: Update imports referencing the old filenames
   - **Edge cases**: Files already using `.spec.js` are skipped
   - **Validation**: `npm test` passes
   - **Requirements**: Node.js, bash (for helper script)
6. You ask the user where to save it and write all files.
