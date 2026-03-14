---
agent: 'agent'
description: 'Assess review comments on a GitHub Pull Request, recommending whether each should be applied.'
argument-hint: 'Optionally provide the PR number to review (e.g., 42)'
tools: [execute/getTerminalOutput, execute/runInTerminal, read/problems, read/readFile, read/terminalSelection, read/terminalLastCommand, search, web, 'github/*']
---
# Assess PR Review Comments

Evaluate review comments on a Pull Request for the current repository
(`${workspaceFolderBasename}`). Analyze each comment for validity and
recommend actions.

## Input

- **PR number** (optional): `${input:prNumber:PR number to review}`

## Step 1: Determine the PR

1. If a PR number was provided, use it.
1. Otherwise, check the current Git branch and find an open PR for it
   using `#tool:githubRepo`.
1. If no PR can be determined, use `#tool:vscode_askQuestions` to ask:
   *"Which PR number should I review comments for?"*

## Step 2: Retrieve PR Context

Using `#tool:mcp_github_pull_request_read`:

1. **PR details** (`method: get`) — title, description, author, intent.
1. **Diff** (`method: get_diff`) — full changeset.
1. **Changed files** (`method: get_files`) — files modified in the PR.
1. **Reviews** (`method: get_reviews`) — submitted reviews and verdicts.
1. **Review comments** (`method: get_review_comments`) — threaded
   comments with resolution status. Paginate with `perPage: 100` using
   the `after` cursor until complete.
1. **PR comments** (`method: get_comments`) — non-review discussion
   comments.

## Step 3: Analyze Each Review Comment

For each comment or thread:

### 3a. Understand the Comment

- What is the reviewer asking or suggesting?
- Does it reference a specific line, file, or pattern?
- Is it a question, suggestion, nitpick, or blocking concern?

### 3b. Validate Against the Codebase

- Read relevant file(s) for full context around the commented code.
- Assess whether the observation is factually correct.
- Check alignment with project coding conventions, patterns, and
  architecture.

### 3c. Classify and Assess

For each comment, determine:

| Attribute | Description |
|---|---|
| **Validity** | Technically correct? (Valid / Partially Valid / Invalid) |
| **Category** | Bug, Security, Performance, Style, Readability, Architecture, Nitpick, Question, or Praise |
| **Recommendation** | Apply / Consider / Skip |
| **Difficulty** | Trivial / Easy / Moderate / Hard |
| **Impact** | Breaking / Significant / Minor / Cosmetic |
| **Risk** | Regression risk if applied (Low / Medium / High) |

## Step 4: Generate the Assessment Report

### Summary

- Total review comments analyzed
- Breakdown by recommendation (Apply / Consider / Skip)
- Breakdown by category
- Overall review quality assessment

### Detailed Assessment Table

| # | File | Reviewer | Category | Validity | Recommendation | Difficulty | Impact | Risk | Summary |
|---|------|----------|----------|----------|----------------|------------|--------|------|---------|
| 1 | `path/to/file.ts` | @reviewer | Bug | Valid | Apply | Easy | Significant | Low | Brief description |
| 2 | `path/to/file.ts` | @reviewer | Nitpick | Valid | Skip | Trivial | Cosmetic | Low | Brief description |

### Detailed Analysis

For each **Apply** or **Consider** comment, provide:

1. **Comment**: Quote or summarize the reviewer's comment
1. **Context**: Relevant code snippet and surrounding context
1. **Analysis**: Why the comment is valid or invalid
1. **Recommendation**: What to change and why
1. **Implementation notes**: Caveats, dependencies, or ordering
   considerations

### Comments Recommended to Skip

For each **Skip** comment, explain why:

- Stylistic preference without project convention backing
- Incorrect observation given full context
- Change would introduce unnecessary complexity
- Already addressed

## Guidelines

- **Be objective**: Base assessments on code quality, conventions, and
  correctness — not on authorship.
- **Consider project context**: Reference existing codebase patterns
  when evaluating suggestions.
- **Prioritize safety**: Always recommend applying security and
  correctness concerns.
- **Flag ambiguity**: If a comment is unclear or ambiguous, note this
  and provide your best interpretation.
- **Include resolved threads**: Note resolved status but include in the
  assessment for completeness.
