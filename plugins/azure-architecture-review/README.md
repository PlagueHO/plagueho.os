# Azure Architecture Review

Architecture review plugin that evaluates Azure Architecture Center multitenant guidance and documentation for currency, accuracy, and completeness.

## What it does

Azure Architecture Review helps maintain high-quality multitenant architecture guidance by:

- Reviewing service-specific multitenant guidance for changes since last review
- Evaluating documentation structure, accuracy, and style against AAC standards
- Producing categorized reports with actionable findings
- Cross-referencing against Microsoft Learn source content via MCP tools

## Skills

### `review-aac-multitenant-guidance`

Activated when a user asks to review Azure Architecture Center multitenant service-specific guidance for currency. Fetches the live documentation via Microsoft Learn MCP tools, compares against known patterns, and produces a structured report of multitenant-relevant changes.

### `review-aac-multitenant-doc`

Activated when a user asks to review a specific AAC multitenant documentation page for accuracy, structure, and style. Evaluates the document against AAC conventions and produces a categorized review report with recommendations.
