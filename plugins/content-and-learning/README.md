# Content and Learning

Content quality and learning plugin that reviews documents for AI readiness and generates structured Microsoft technology learning pathways.

## What it does

Content and Learning helps produce high-quality technical content by:

- Evaluating documents against AI-optimized content guidelines
- Assessing accuracy, metadata tagging, structure, tone, and accessibility
- Generating structured learning pathways (L100–L400) for Microsoft technologies
- Sourcing training modules and documentation from Microsoft Learn via MCP tools

## Skills

### `ai-content-readiness-review`

Activated when a user asks to review content for AI readiness or perform an AI content audit. Reads the document and evaluates it against criteria including accuracy, metadata tagging, structure, tone, accessibility, and AI-friendly formatting.

### `create-learning-pathway`

Activated when a user asks to create a learning pathway, study guide, or skilling roadmap for a Microsoft technology. Queries Microsoft Learn MCP tools for relevant modules and generates a structured document progressing from L100 (introductory) through L400 (expert).
