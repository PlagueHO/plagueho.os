# .NET Modernization

Modernization plugin that converts legacy .NET project files to the modern SDK-style format.

## What it does

.NET Modernization helps upgrade legacy .NET projects by:

- Analyzing `.csproj`, `.fsproj`, and `.vbproj` files for legacy patterns
- Converting project files to the modern SDK-style format
- Migrating package references, build properties, and project settings
- Validating the converted project builds correctly

## Skills

### `dotnet-sdk-style-upgrade`

Activated when a user asks to modernize a .NET project or upgrade a project file to SDK-style. Analyzes the legacy project XML, maps properties and references to their SDK-style equivalents, and produces a converted project file.
