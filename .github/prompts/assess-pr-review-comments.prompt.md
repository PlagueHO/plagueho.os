---
agent: 'agent'
description: 'Assess and evaluate all review comments on a GitHub Pull Request, recommending whether each should be applied.'
argument-hint: 'Optionally provide the PR number to review (e.g., 42)'
tools: [execute/getTerminalOutput, execute/runInTerminal, read/problems, read/readFile, read/terminalSelection, read/terminalLastCommand, search, web, 'github/*']
---
# Assess PR Review Comments

Evaluate all review comments on a Pull Request for the current repository (`${workspaceFolderBasename}`), owned by the repository owner on GitHub. Analyze each comment for validity and provide actionable recommendations.

## Input

- **PR number** (optional): `${input:prNumber:PR number to review}`

## Step 1: Determine the PR to Review

1. If a PR number was provided via the input above, use it.
1. Otherwise, check the current Git branch and look for an open PR associated with it using `#tool:githubRepo`.
1. If no PR can be confidently determined, use `#tool:vscode_askQuestions` to ask the user: _"Which PR number should I review comments for?"_

## Step 2: Retrieve PR Context

Using `#tool:mcp_github_pull_request_read`:

1. **Get PR details** (`method: get`) — understand the PR title, description, author, and intent.
1. **Get the diff** (`method: get_diff`) — retrieve the full changeset for context.
1. **Get changed files** (`method: get_files`) — list all files modified in the PR.
1. **Get reviews** (`method: get_reviews`) — retrieve all submitted reviews and their verdicts.
1. **Get review comments** (`method: get_review_comments`) — retrieve all threaded review comments with resolution status. Paginate with `perPage: 100` and continue fetching using the `after` cursor until all comments are retrieved.
1. **Get general PR comments** (`method: get_comments`) — retrieve any non-review discussion comments.

## Step 3: Analyze Each Review Comment

For every review comment (or comment thread), perform the following analysis:

### 3a. Understand the Comment

- What is the reviewer asking or suggesting?
- Does it reference a specific line, file, or pattern?
- Is it a question, suggestion, nitpick, or blocking concern?

### 3b. Validate Against the Codebase

- Read the relevant file(s) from the workspace to understand the full context around the commented code.
- Assess whether the reviewer's observation is factually correct.
- Check if the suggestion aligns with the project's coding conventions, patterns, and architecture.

### 3c. Classify and Assess

For each comment, determine:

| Attribute | Description |
|---|---|
| **Validity** | Is the comment technically correct? (Valid / Partially Valid / Invalid) |
| **Category** | Bug, Security, Performance, Style, Readability, Architecture, Nitpick, Question, or Praise |
| **Recommendation** | Should the suggestion be applied? (Apply / Consider / Skip) |
| **Difficulty** | How hard is the change to implement? (Trivial / Easy / Moderate / Hard) |
| **Impact** | What are the consequences of applying or not applying the change? (Breaking / Significant / Minor / Cosmetic) |
| **Risk** | Risk of introducing regressions if applied (Low / Medium / High) |

## Step 4: Generate the Assessment Report

Present the full assessment as a structured report with the following format:

### Summary

Provide an overview:

- Total number of review comments analyzed
- Breakdown by recommendation (Apply / Consider / Skip)
- Breakdown by category
- Overall assessment of the review quality

### Detailed Assessment Table

For each comment, present a row:

| # | File | Reviewer | Category | Validity | Recommendation | Difficulty | Impact | Risk | Summary |
|---|------|----------|----------|----------|----------------|------------|--------|------|---------|
| 1 | `path/to/file.ts` | @reviewer | Bug | Valid | Apply | Easy | Significant | Low | Brief description |
| 2 | `path/to/file.ts` | @reviewer | Nitpick | Valid | Skip | Trivial | Cosmetic | Low | Brief description |

### Detailed Analysis

For each comment that is recommended as **Apply** or **Consider**, provide:

1. **Comment**: Quote or summarize the reviewer's comment
1. **Context**: Relevant code snippet and surrounding context
1. **Analysis**: Why the comment is valid or invalid
1. **Recommendation**: Specific guidance on what to change and why
1. **Implementation notes**: Any caveats, dependencies, or ordering considerations

### Comments Recommended to Skip

For comments marked **Skip**, provide a brief explanation of why:

- The suggestion is stylistic preference without project convention backing
- The observation is incorrect given the full context
- The change would introduce unnecessary complexity
- The comment has already been addressed

## Guidelines

- **Be objective**: Base assessments on code quality, project conventions, and technical correctness — not on who wrote the comment or the code.
- **Consider the project context**: Reference existing patterns in the codebase when evaluating suggestions.
- **Prioritize safety**: Security and correctness concerns should always be recommended to apply.
- **Flag ambiguity**: If a comment is unclear or could be interpreted multiple ways, note this and provide your best interpretation.
- **Respect resolved threads**: Note which comment threads are already resolved, but still include them in the assessment for completeness.
