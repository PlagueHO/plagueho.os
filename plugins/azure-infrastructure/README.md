# Azure Infrastructure

Infrastructure management plugin that provisions Azure identities for GitHub and keeps Azure Verified Module references up to date.

## What it does

Azure Infrastructure automates common Azure infrastructure tasks by:

- Provisioning User Assigned Managed Identities with OIDC federation for passwordless GitHub Actions authentication
- Configuring RBAC role assignments for GitHub-to-Azure workflows
- Scanning Bicep files for Azure Verified Module (AVM) references
- Querying the Microsoft Container Registry for latest AVM versions and applying updates

## Skills

### `azure-github-managed-identity`

Activated when a user asks to set up Azure access for GitHub Actions or configure OIDC federation. Provisions a User Assigned Managed Identity, configures federated credentials for GitHub, and assigns RBAC roles — all via PowerShell scripts using the Azure CLI.

### `update-avm-modules`

Activated when a user asks to update Azure Verified Modules in Bicep files. Scans for AVM module references, queries the Microsoft Container Registry for latest versions, compares using semantic versioning, reviews breaking changes, and applies updates with validation.
