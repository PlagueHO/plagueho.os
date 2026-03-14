#!/usr/bin/env bash
# Sync-VscodeProfiles — Sync VS Code profiles and extensions between variants.
#
# Reads all profiles from a source VS Code variant (e.g., VS Code Insiders),
# enumerates extensions per profile, and installs missing extensions in the
# target VS Code variant (e.g., VS Code stable). Optionally removes extensions
# in the target that are not present in the source.
#
# Usage:
#   ./sync-vscode-profiles.sh [OPTIONS]
#
# Options:
#   --source-cli <cmd>    Source VS Code CLI command (default: code-insiders)
#   --target-cli <cmd>    Target VS Code CLI command (default: code)
#   --profiles <list>     Comma-separated profile names to sync (default: all)
#   --no-default          Skip the Default profile
#   --remove-extras       Remove extensions from target not in source
#   --dry-run             Preview changes without applying them
#   --help                Show this help message

set -euo pipefail

# --- Defaults ---
SOURCE_CLI="code-insiders"
TARGET_CLI="code"
FILTER_PROFILES=""
INCLUDE_DEFAULT=true
REMOVE_EXTRAS=false
DRY_RUN=false

# --- Parse arguments ---
while [[ $# -gt 0 ]]; do
    case "$1" in
        --source-cli)
            SOURCE_CLI="$2"; shift 2 ;;
        --target-cli)
            TARGET_CLI="$2"; shift 2 ;;
        --profiles)
            FILTER_PROFILES="$2"; shift 2 ;;
        --no-default)
            INCLUDE_DEFAULT=false; shift ;;
        --remove-extras)
            REMOVE_EXTRAS=true; shift ;;
        --dry-run)
            DRY_RUN=true; shift ;;
        --help)
            head -25 "$0" | tail -20; exit 0 ;;
        *)
            echo "Unknown option: $1" >&2; exit 1 ;;
    esac
done

# --- Helpers ---

color_reset="\033[0m"
color_cyan="\033[36m"
color_green="\033[32m"
color_yellow="\033[33m"
color_red="\033[31m"
color_magenta="\033[35m"
color_gray="\033[90m"

info()    { echo -e "${color_cyan}$*${color_reset}"; }
success() { echo -e "${color_green}$*${color_reset}"; }
warn()    { echo -e "${color_yellow}$*${color_reset}"; }
error()   { echo -e "${color_red}$*${color_reset}" >&2; }

get_storage_json_path() {
    local cli_name="$1"
    local dir_name

    case "$cli_name" in
        code-insiders) dir_name="Code - Insiders" ;;
        code)          dir_name="Code" ;;
        *)             dir_name="$cli_name" ;;
    esac

    if [[ "$(uname)" == "Darwin" ]]; then
        echo "$HOME/Library/Application Support/$dir_name/User/globalStorage/storage.json"
    else
        local config_dir="${XDG_CONFIG_HOME:-$HOME/.config}"
        echo "$config_dir/$dir_name/User/globalStorage/storage.json"
    fi
}

get_profile_names() {
    local storage_json="$1"

    if [[ ! -f "$storage_json" ]]; then
        error "Storage file not found: $storage_json"
        return 1
    fi

    # Extract profile names from userDataProfiles array using python or jq
    if command -v jq &>/dev/null; then
        jq -r '.userDataProfiles[]?.name // empty' "$storage_json" 2>/dev/null || true
    elif command -v python3 &>/dev/null; then
        python3 -c "
import json, sys
with open('$storage_json') as f:
    data = json.load(f)
for p in data.get('userDataProfiles', []):
    print(p.get('name', ''))
" 2>/dev/null || true
    else
        error "Neither jq nor python3 found. Install one to parse profile data."
        return 1
    fi
}

get_extensions() {
    local cli="$1"
    local profile="$2"

    "$cli" --list-extensions --profile "$profile" 2>/dev/null | \
        tr '[:upper:]' '[:lower:]' | \
        grep -v '^$' || true
}

# --- Validation ---

echo ""
info "VS Code Profile Sync"
info "====================="
echo ""

if ! command -v "$SOURCE_CLI" &>/dev/null; then
    error "Source CLI '$SOURCE_CLI' not found on PATH."
    exit 1
fi

if ! command -v "$TARGET_CLI" &>/dev/null; then
    error "Target CLI '$TARGET_CLI' not found on PATH."
    exit 1
fi

source_version=$("$SOURCE_CLI" --version 2>&1 | head -1)
target_version=$("$TARGET_CLI" --version 2>&1 | head -1)
echo "Source: $SOURCE_CLI (version $source_version)"
echo "Target: $TARGET_CLI (version $target_version)"
echo ""

# --- Discover profiles ---

storage_json=$(get_storage_json_path "$SOURCE_CLI")
echo -e "${color_gray}Reading profiles from: $storage_json${color_reset}"

mapfile -t custom_profiles < <(get_profile_names "$storage_json")

all_profiles=()
if [[ "$INCLUDE_DEFAULT" == true ]]; then
    all_profiles+=("Default")
fi
all_profiles+=("${custom_profiles[@]}")

# Filter if requested
if [[ -n "$FILTER_PROFILES" ]]; then
    IFS=',' read -ra filter_list <<< "$FILTER_PROFILES"
    filtered=()
    for p in "${all_profiles[@]}"; do
        for f in "${filter_list[@]}"; do
            f_trimmed=$(echo "$f" | xargs)
            if [[ "$p" == "$f_trimmed" ]]; then
                filtered+=("$p")
                break
            fi
        done
    done
    all_profiles=("${filtered[@]}")
fi

if [[ ${#all_profiles[@]} -eq 0 ]]; then
    warn "No profiles found to sync."
    exit 0
fi

success "Profiles to sync: ${all_profiles[*]}"
echo ""

# --- Enumerate and sync ---

total_installed=0
total_removed=0
total_errors=0

for profile in "${all_profiles[@]}"; do
    warn "--- Profile: $profile ---"

    mapfile -t source_exts < <(get_extensions "$SOURCE_CLI" "$profile")
    mapfile -t target_exts < <(get_extensions "$TARGET_CLI" "$profile")

    # Compute to-install
    to_install=()
    for ext in "${source_exts[@]}"; do
        found=false
        for t in "${target_exts[@]}"; do
            if [[ "$ext" == "$t" ]]; then found=true; break; fi
        done
        if [[ "$found" == false ]]; then
            to_install+=("$ext")
        fi
    done

    # Compute to-remove
    to_remove=()
    if [[ "$REMOVE_EXTRAS" == true ]]; then
        for ext in "${target_exts[@]}"; do
            found=false
            for s in "${source_exts[@]}"; do
                if [[ "$ext" == "$s" ]]; then found=true; break; fi
            done
            if [[ "$found" == false ]]; then
                to_remove+=("$ext")
            fi
        done
    fi

    # Compute already synced
    synced_count=0
    for ext in "${source_exts[@]}"; do
        for t in "${target_exts[@]}"; do
            if [[ "$ext" == "$t" ]]; then ((synced_count++)) || true; break; fi
        done
    done

    echo "  Source extensions: ${#source_exts[@]}"
    echo "  Target extensions: ${#target_exts[@]}"
    info "  To install: ${#to_install[@]}"
    if [[ ${#to_remove[@]} -gt 0 ]]; then
        error "  To remove: ${#to_remove[@]}"
    else
        echo -e "${color_gray}  To remove: 0${color_reset}"
    fi
    echo -e "${color_gray}  Already synced: $synced_count${color_reset}"

    if [[ ${#to_install[@]} -gt 0 ]]; then
        info "  Extensions to install:"
        for ext in "${to_install[@]}"; do echo -e "    ${color_cyan}+ $ext${color_reset}"; done
    fi

    if [[ ${#to_remove[@]} -gt 0 ]]; then
        error "  Extensions to remove:"
        for ext in "${to_remove[@]}"; do echo -e "    ${color_red}- $ext${color_reset}"; done
    fi

    if [[ "$DRY_RUN" == true ]]; then
        echo -e "  ${color_magenta}[DRY RUN] No changes applied.${color_reset}"
        echo ""
        continue
    fi

    # Install missing
    for ext in "${to_install[@]}"; do
        echo -ne "  Installing: $ext "
        if "$TARGET_CLI" --install-extension "$ext" --profile "$profile" &>/dev/null; then
            success "OK"
            ((total_installed++)) || true
        else
            error "FAILED"
            ((total_errors++)) || true
        fi
    done

    # Remove extras
    for ext in "${to_remove[@]}"; do
        echo -ne "  Removing: $ext "
        if "$TARGET_CLI" --uninstall-extension "$ext" --profile "$profile" &>/dev/null; then
            success "OK"
            ((total_removed++)) || true
        else
            error "FAILED"
            ((total_errors++)) || true
        fi
    done

    echo ""
done

# --- Summary ---

info "====================="
if [[ "$DRY_RUN" == true ]]; then
    echo -e "${color_magenta}Dry run complete. No changes were applied.${color_reset}"
else
    success "Sync complete:"
    echo "  Profiles synced: ${#all_profiles[@]}"
    echo "  Extensions installed: $total_installed"
    echo "  Extensions removed: $total_removed"
    if [[ $total_errors -gt 0 ]]; then
        error "  Errors: $total_errors"
    else
        success "  Errors: 0"
    fi
fi
