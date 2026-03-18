#!/usr/bin/env bash
# update-marketplace.sh
#
# Update marketplace.json by discovering unassigned skills/agents or
# appending items to plugins.
#
# Modes:
#   --discover               List unassigned skills and agents as JSON.
#   --plugin-name <name>     Target plugin for add operations.
#   --add-skill <path>       Add a skill path to the plugin.
#   --add-agent <path>       Add an agent path to the plugin.
#   --new-plugin             Create a new plugin entry.
#   --plugin-description <d> Description for the new plugin.
#   --plugin-source <path>   Source path for the new plugin.
#   --repo-root <path>       Repository root (default: 4 levels up from script).
#
# Requires: jq

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT=""
DISCOVER=false
PLUGIN_NAME=""
ADD_SKILL=""
ADD_AGENT=""
NEW_PLUGIN=false
PLUGIN_DESCRIPTION=""
PLUGIN_SOURCE=""

# ---------------------------------------------------------------------------
# Parse arguments
# ---------------------------------------------------------------------------

while [[ $# -gt 0 ]]; do
    case "$1" in
        --repo-root)        REPO_ROOT="$2"; shift 2 ;;
        --discover)         DISCOVER=true; shift ;;
        --plugin-name)      PLUGIN_NAME="$2"; shift 2 ;;
        --add-skill)        ADD_SKILL="$2"; shift 2 ;;
        --add-agent)        ADD_AGENT="$2"; shift 2 ;;
        --new-plugin)       NEW_PLUGIN=true; shift ;;
        --plugin-description) PLUGIN_DESCRIPTION="$2"; shift 2 ;;
        --plugin-source)    PLUGIN_SOURCE="$2"; shift 2 ;;
        *)
            echo "Unknown option: $1" >&2
            exit 1
            ;;
    esac
done

if [[ -z "$REPO_ROOT" ]]; then
    REPO_ROOT="$(cd "$SCRIPT_DIR/../../../.." && pwd)"
fi

MARKETPLACE_PATH="$REPO_ROOT/.github/plugin/marketplace.json"
SKILLS_DIR="$REPO_ROOT/.github/skills"
AGENTS_DIR="$REPO_ROOT/.github/agents"

if ! command -v jq &>/dev/null; then
    echo "Error: jq is required but not installed." >&2
    exit 1
fi

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

bump_minor_version() {
    local ver="$1"
    if [[ "$ver" =~ ^([0-9]+)\.([0-9]+)\.([0-9]+)$ ]]; then
        local major="${BASH_REMATCH[1]}"
        local minor="${BASH_REMATCH[2]}"
        minor=$((minor + 1))
        echo "${major}.${minor}.0"
    else
        echo "$ver"
    fi
}

# Extract a YAML frontmatter value from a SKILL.md file.
# Usage: extract_fm_field <file> <field>
extract_fm_field() {
    local file="$1"
    local field="$2"
    # Get content between --- markers
    local in_fm=false
    local fm=""
    while IFS= read -r line; do
        if [[ "$line" =~ ^---[[:space:]]*$ ]]; then
            if $in_fm; then break; fi
            in_fm=true
            continue
        fi
        if $in_fm; then
            fm+="$line"$'\n'
        fi
    done < "$file"

    # Simple single-line extraction
    echo "$fm" | grep -E "^${field}:" | head -1 | sed "s/^${field}:[[:space:]]*//" | sed "s/^['\"]//;s/['\"]$//" | tr -d '\r'
}

# Extract description handling multi-line folded scalars
extract_description() {
    local file="$1"
    local in_fm=false
    local in_desc=false
    local desc=""
    while IFS= read -r line; do
        if [[ "$line" =~ ^---[[:space:]]*$ ]]; then
            if $in_fm; then break; fi
            in_fm=true
            continue
        fi
        if ! $in_fm; then continue; fi

        if [[ "$line" =~ ^description:[[:space:]]*[\>\|] ]]; then
            in_desc=true
            continue
        elif [[ "$line" =~ ^description:[[:space:]]+(.*) ]]; then
            desc="${BASH_REMATCH[1]}"
            desc="${desc#\"}"
            desc="${desc%\"}"
            desc="${desc#\'}"
            desc="${desc%\'}"
            echo "$desc"
            return
        fi

        if $in_desc; then
            if [[ "$line" =~ ^[[:space:]]{2,} ]] && [[ -n "$(echo "$line" | tr -d '[:space:]')" ]]; then
                local trimmed
                trimmed="$(echo "$line" | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//')"
                if [[ -n "$desc" ]]; then
                    desc="$desc $trimmed"
                else
                    desc="$trimmed"
                fi
            else
                break
            fi
        fi
    done < "$file"
    echo "$desc"
}

# ---------------------------------------------------------------------------
# Discover mode
# ---------------------------------------------------------------------------

if $DISCOVER; then
    if [[ ! -f "$MARKETPLACE_PATH" ]]; then
        echo "Error: marketplace.json not found at: $MARKETPLACE_PATH" >&2
        exit 1
    fi

    marketplace="$(cat "$MARKETPLACE_PATH")"

    # Build a list of all assigned skill sources and agent references
    assigned_skills="$(echo "$marketplace" | jq -r '
        [.plugins[] | . as $p |
            (.skills // [] | .[] |
                if . == "." then $p.source
                else ($p.source + "/" + .)
                end
            )
        ] | .[]'
    )"

    assigned_agents="$(echo "$marketplace" | jq -r '
        [.plugins[] | . as $p |
            (.agents // [] | .[] |
                ($p.source + "/" + .)
            )
        ] | .[]'
    )"

    results="[]"

    # Check skills
    if [[ -d "$SKILLS_DIR" ]]; then
        for dir in "$SKILLS_DIR"/*/; do
            [[ -d "$dir" ]] || continue
            skill_name="$(basename "$dir")"
            skill_file="$dir/SKILL.md"
            [[ -f "$skill_file" ]] || continue

            source="./.github/skills/$skill_name"
            if echo "$assigned_skills" | grep -qxF "$source"; then
                continue
            fi

            name="$(extract_fm_field "$skill_file" "name")"
            [[ -z "$name" ]] && name="$skill_name"
            desc="$(extract_description "$skill_file")"

            results="$(echo "$results" | jq --arg t "skill" --arg n "$name" --arg d "$desc" --arg s "$source" \
                '. + [{"type": $t, "name": $n, "description": $d, "source": $s}]')"
        done
    fi

    # Check agents
    if [[ -d "$AGENTS_DIR" ]]; then
        for file in "$AGENTS_DIR"/*.agent.md; do
            [[ -f "$file" ]] || continue
            agent_filename="$(basename "$file")"
            agent_name="${agent_filename%.agent.md}"
            rel_path="./.github/agents/$agent_filename"

            is_assigned=false
            while IFS= read -r assigned; do
                if [[ "$assigned" == "$rel_path" ]] || [[ "$assigned" == *"$agent_filename" ]]; then
                    is_assigned=true
                    break
                fi
            done <<< "$assigned_agents"

            if ! $is_assigned; then
                desc="$(extract_description "$file")"
                if [[ -z "$desc" ]]; then
                    desc="$(extract_fm_field "$file" "description")"
                fi

                results="$(echo "$results" | jq --arg t "agent" --arg n "$agent_name" --arg d "$desc" --arg s "$rel_path" \
                    '. + [{"type": $t, "name": $n, "description": $d, "source": $s}]')"
            fi
        done
    fi

    echo "$results" | jq .
    exit 0
fi

# ---------------------------------------------------------------------------
# Add / Create plugin mode
# ---------------------------------------------------------------------------

if [[ -z "$PLUGIN_NAME" ]]; then
    echo "Error: --plugin-name is required." >&2
    exit 1
fi

if [[ ! -f "$MARKETPLACE_PATH" ]]; then
    echo "Error: marketplace.json not found at: $MARKETPLACE_PATH" >&2
    exit 1
fi

changed=false

if $NEW_PLUGIN; then
    if [[ -z "$PLUGIN_DESCRIPTION" ]]; then
        echo "Error: --plugin-description is required for new plugins." >&2
        exit 1
    fi
    if [[ -z "$PLUGIN_SOURCE" ]]; then
        echo "Error: --plugin-source is required for new plugins." >&2
        exit 1
    fi

    # Check plugin doesn't already exist
    existing="$(jq -r --arg n "$PLUGIN_NAME" '.plugins[] | select(.name == $n) | .name' "$MARKETPLACE_PATH")"
    if [[ -n "$existing" ]]; then
        echo "Error: Plugin '$PLUGIN_NAME' already exists." >&2
        exit 1
    fi

    new_plugin="$(jq -n \
        --arg name "$PLUGIN_NAME" \
        --arg source "$PLUGIN_SOURCE" \
        --arg desc "$PLUGIN_DESCRIPTION" \
        '{name: $name, source: $source, description: $desc, version: "1.0.0", skills: [], agents: []}')"

    if [[ -n "$ADD_SKILL" ]]; then
        new_plugin="$(echo "$new_plugin" | jq --arg s "$ADD_SKILL" '.skills += [$s]')"
    fi
    if [[ -n "$ADD_AGENT" ]]; then
        new_plugin="$(echo "$new_plugin" | jq --arg a "$ADD_AGENT" '.agents += [$a]')"
    fi

    # Remove empty arrays
    new_plugin="$(echo "$new_plugin" | jq 'if (.skills | length) == 0 then del(.skills) else . end | if (.agents | length) == 0 then del(.agents) else . end')"

    # Add plugin and sort by name
    jq --argjson p "$new_plugin" '.plugins += [$p] | .plugins |= sort_by(.name)' "$MARKETPLACE_PATH" > "${MARKETPLACE_PATH}.tmp"
    mv "${MARKETPLACE_PATH}.tmp" "$MARKETPLACE_PATH"
    changed=true
    echo "Created new plugin '$PLUGIN_NAME'."
else
    # Add to existing plugin
    existing="$(jq -r --arg n "$PLUGIN_NAME" '.plugins[] | select(.name == $n) | .name' "$MARKETPLACE_PATH")"
    if [[ -z "$existing" ]]; then
        echo "Error: Plugin '$PLUGIN_NAME' not found. Use --new-plugin to create it." >&2
        exit 1
    fi

    if [[ -n "$ADD_SKILL" ]]; then
        already="$(jq -r --arg n "$PLUGIN_NAME" --arg s "$ADD_SKILL" \
            '.plugins[] | select(.name == $n) | .skills // [] | .[] | select(. == $s)' "$MARKETPLACE_PATH")"
        if [[ -z "$already" ]]; then
            current_ver="$(jq -r --arg n "$PLUGIN_NAME" '.plugins[] | select(.name == $n) | .version' "$MARKETPLACE_PATH")"
            new_ver="$(bump_minor_version "$current_ver")"
            jq --arg n "$PLUGIN_NAME" --arg s "$ADD_SKILL" --arg v "$new_ver" \
                '(.plugins[] | select(.name == $n)) |= (.skills = ((.skills // []) + [$s]) | .version = $v)' \
                "$MARKETPLACE_PATH" > "${MARKETPLACE_PATH}.tmp"
            mv "${MARKETPLACE_PATH}.tmp" "$MARKETPLACE_PATH"
            changed=true
            echo "Added skill '$ADD_SKILL' to plugin '$PLUGIN_NAME'."
        else
            echo "Skill '$ADD_SKILL' already exists in plugin '$PLUGIN_NAME'. Skipping."
        fi
    fi

    if [[ -n "$ADD_AGENT" ]]; then
        already="$(jq -r --arg n "$PLUGIN_NAME" --arg a "$ADD_AGENT" \
            '.plugins[] | select(.name == $n) | .agents // [] | .[] | select(. == $a)' "$MARKETPLACE_PATH")"
        if [[ -z "$already" ]]; then
            current_ver="$(jq -r --arg n "$PLUGIN_NAME" '.plugins[] | select(.name == $n) | .version' "$MARKETPLACE_PATH")"
            new_ver="$(bump_minor_version "$current_ver")"
            jq --arg n "$PLUGIN_NAME" --arg a "$ADD_AGENT" --arg v "$new_ver" \
                '(.plugins[] | select(.name == $n)) |= (.agents = ((.agents // []) + [$a]) | .version = $v)' \
                "$MARKETPLACE_PATH" > "${MARKETPLACE_PATH}.tmp"
            mv "${MARKETPLACE_PATH}.tmp" "$MARKETPLACE_PATH"
            changed=true
            echo "Added agent '$ADD_AGENT' to plugin '$PLUGIN_NAME'."
        else
            echo "Agent '$ADD_AGENT' already exists in plugin '$PLUGIN_NAME'. Skipping."
        fi
    fi
fi

# Bump marketplace version if changed
if $changed; then
    current_marketplace_ver="$(jq -r '.metadata.version' "$MARKETPLACE_PATH")"
    new_marketplace_ver="$(bump_minor_version "$current_marketplace_ver")"
    jq --arg v "$new_marketplace_ver" '.metadata.version = $v' "$MARKETPLACE_PATH" > "${MARKETPLACE_PATH}.tmp"
    mv "${MARKETPLACE_PATH}.tmp" "$MARKETPLACE_PATH"
    echo "Marketplace updated. Version: $new_marketplace_ver"
fi
