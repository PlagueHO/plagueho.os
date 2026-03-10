---
agent: 'agent'
description: 'Optimize a prompt, skill, or agent definition to minimize token count while preserving clarity, determinism, and correctness.'
argument-hint: 'Provide the file path to the prompt, skill, or agent definition to optimize (e.g., .github/prompts/my-prompt.prompt.md)'
tools: [read/readFile, agent, edit, search]
---

# Optimize Prompt Token Usage

Reduce the token count of a prompt (`.prompt.md`), skill (`SKILL.md`), or agent
definition (`.agent.md`) while preserving semantic completeness, determinism,
and clarity for AI coding agents.

## Input

- **File to optimize**: `${input:filePath:Path to prompt, skill, or agent definition file}`

## Step 1 — Read and Baseline

1. Read the target file.
1. Count the approximate token count (estimate 1 token per 4 characters).
1. Record the baseline token estimate.

## Step 2 — Analyze for Optimization

Scan the content for the following token-waste patterns:

### 2a. Redundant and Filler Language

- Adverbs that add no precision: "simply", "just", "basically", "actually",
  "really", "very", "extremely", "quite", "fairly", "rather", "somewhat"
- Hedging phrases: "it is important to note that", "please make sure to",
  "you should consider", "it is worth mentioning", "keep in mind that",
  "note that you should"
- Redundant preambles: "In order to", "The purpose of this is to",
  "What this does is", "This section describes how to"
- Filler transitions: "Next, we will", "Now let's", "Moving on to",
  "As mentioned above", "As previously stated"
- Polite padding: "please", "kindly", "if you don't mind"
- Tautologies: "each and every", "first and foremost", "any and all",
  "completely and totally"

### 2b. Verbose Constructions

Replace with concise equivalents:

| Verbose | Concise |
|---------|---------|
| "in order to" | "to" |
| "due to the fact that" | "because" |
| "at this point in time" | "now" |
| "in the event that" | "if" |
| "with the exception of" | "except" |
| "on a regular basis" | "regularly" |
| "a large number of" | "many" |
| "has the ability to" | "can" |
| "is able to" | "can" |
| "make sure that" | "ensure" |
| "whether or not" | "whether" |
| "it is necessary to" | "must" |
| "for the purpose of" | "to" / "for" |
| "in the case of" | "for" / "when" |
| "the fact that" | remove or rephrase |
| "there is/are ... that" | rephrase directly |

### 2c. Structural Redundancy

- Repeated instructions already covered by frontmatter or parent context.
- Descriptions that restate the heading in prose form.
- Section introductions that repeat the section title as a sentence.
- Duplicate constraints stated in multiple places — consolidate to one location.
- Examples that illustrate the same pattern more than once.

### 2d. Unnecessary Formatting

- Excessive blank lines (more than one consecutive).
- Decorative separators or horizontal rules that serve no structural purpose.
- Over-use of bold/italic for emphasis where structure already conveys importance.
- Long table header labels that can be shortened.

### 2e. Instruction Precision

- Convert passive voice to active voice ("The file should be read" →
  "Read the file").
- Convert conditional instructions to imperative where the condition is always
  true.
- Replace vague quantifiers ("some", "various", "several") with specific
  values or remove them.
- Remove meta-commentary about the instructions themselves ("This section
  explains how to...").

## Step 3 — Apply Optimizations

Apply all identified optimizations to the file. Follow these constraints:

1. **Preserve all semantic content.** Every instruction, constraint, rule, and
   example in the original must have an equivalent in the optimized version.
   Do not remove steps, conditions, edge cases, or tool references.
1. **Preserve frontmatter fields and values.** Do not alter YAML frontmatter
   keys. Optimize the `description` field value only if it contains filler.
1. **Preserve structural hierarchy.** Keep the same heading levels and
   numbered/bulleted list structure. Do not merge or reorder sections.
1. **Preserve code blocks and examples verbatim.** Do not alter content inside
   fenced code blocks unless it contains comments with filler language.
1. **Preserve tool references.** Do not rename, remove, or alter `#tool:` or
   tool name references.
1. **Use imperative mood.** Instructions to the agent should be direct commands:
   "Read the file", "Extract the pattern", "Return the result".
1. **One idea per sentence.** Break compound sentences with multiple clauses
   into separate concise sentences.

## Step 4 — Validate

1. Compare the optimized version against the original section-by-section.
1. Confirm no instructions, constraints, steps, or behavioral rules were lost.
1. Confirm no tool references or variable interpolations were altered.
1. Estimate the new token count.

## Step 5 — Report

Present a summary:

| Metric | Value |
|--------|-------|
| **Original tokens (est.)** | `<count>` |
| **Optimized tokens (est.)** | `<count>` |
| **Reduction** | `<count>` (`<percent>`%) |

Then list the categories of changes applied:

- **Filler removed**: Count of filler words/phrases eliminated
- **Verbose → concise**: Count of verbose constructions replaced
- **Structural dedup**: Count of redundant sections/sentences consolidated
- **Voice/mood fixes**: Count of passive → active or conditional → imperative
- **Formatting cleanup**: Count of formatting-only changes

If any optimization was intentionally skipped to preserve clarity or
determinism, note it with the rationale.
