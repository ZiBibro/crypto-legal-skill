#!/usr/bin/env bash
# crypto-legal skill installer
# Pure bash. Idempotent. No network calls except optional codex detection.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_NAME="crypto-legal"
SKILL_VERSION="2026-06"

# Allow override via env var; default to ~/.claude/skills/ and ~/.claude/commands/
SKILLS_HOME="${CLAUDE_SKILLS_HOME:-$HOME/.claude/skills}"
COMMANDS_HOME="${CLAUDE_COMMANDS_HOME:-$HOME/.claude/commands}"
SKILL_HOME="$SKILLS_HOME/$SKILL_NAME"
CMD_HOME="$COMMANDS_HOME/$SKILL_NAME"
CODEX_HOME="$HOME/.codex/skills/$SKILL_NAME"

# Color helpers
if [[ -t 1 ]]; then
  CYAN='\033[0;36m'
  GREEN='\033[0;32m'
  YELLOW='\033[1;33m'
  RED='\033[0;31m'
  BOLD='\033[1m'
  RESET='\033[0m'
else
  CYAN=''; GREEN=''; YELLOW=''; RED=''; BOLD=''; RESET=''
fi

banner() {
  printf "\n${BOLD}${CYAN}═══════════════════════════════════════════════════════════${RESET}\n"
  printf "${BOLD}  crypto-legal skill installer${RESET}\n"
  printf "${CYAN}  Calendar version: %s${RESET}\n" "$SKILL_VERSION"
  printf "${CYAN}  Source: %s${RESET}\n" "$SCRIPT_DIR"
  printf "${BOLD}${CYAN}═══════════════════════════════════════════════════════════${RESET}\n\n"
}

prereq_check() {
  if ! command -v claude >/dev/null 2>&1; then
    printf "${YELLOW}[warn]${RESET} 'claude' CLI not found on PATH. Skill files will be installed anyway.\n"
    printf "${YELLOW}       Install Claude Code from https://claude.com/claude-code to use this skill.${RESET}\n\n"
  fi
}

existing_install_check() {
  if [[ -d "$SKILL_HOME" ]]; then
    printf "${YELLOW}[info]${RESET} Existing install detected at ${BOLD}%s${RESET}\n" "$SKILL_HOME"
    printf "Options: [u]pdate (overwrite), [b]ack-up then update, [a]bort. Default: u\n"
    read -r -p "> " choice
    choice="${choice:-u}"
    case "$choice" in
      u|U)
        printf "  -> overwriting in place\n\n"
        ;;
      b|B)
        local backup_dir="${SKILL_HOME}.backup.$(date +%Y%m%d-%H%M%S)"
        mv "$SKILL_HOME" "$backup_dir"
        printf "  -> backed up to %s\n\n" "$backup_dir"
        ;;
      a|A)
        printf "${RED}Aborted.${RESET}\n"
        exit 0
        ;;
      *)
        printf "${RED}Unknown choice; aborting.${RESET}\n"
        exit 1
        ;;
    esac
  fi
}

copy_payload() {
  local target="$1"
  mkdir -p "$target"

  # Mirror skill/* into the root of the install dir (Claude Code convention)
  if [[ -d "$SCRIPT_DIR/skill" ]]; then
    cp -R "$SCRIPT_DIR/skill/." "$target/"
  fi

  # Top-level scaffolding
  cp "$SCRIPT_DIR/CLAUDE.md"     "$target/CLAUDE.md"
  cp "$SCRIPT_DIR/DISCLAIMER.md" "$target/DISCLAIMER.md"
  cp "$SCRIPT_DIR/LICENSE"       "$target/LICENSE"
  cp "$SCRIPT_DIR/README.md"     "$target/README.md"

  # Optional layers
  [[ -d "$SCRIPT_DIR/agents" ]]   && cp -R "$SCRIPT_DIR/agents"   "$target/agents"
  [[ -d "$SCRIPT_DIR/commands" ]] && cp -R "$SCRIPT_DIR/commands" "$target/commands"
  [[ -d "$SCRIPT_DIR/rules" ]]    && cp -R "$SCRIPT_DIR/rules"    "$target/rules"
}

install_claude() {
  mkdir -p "$SKILLS_HOME"
  copy_payload "$SKILL_HOME"
  printf "${GREEN}[ok]${RESET}   installed to %s\n" "$SKILL_HOME"
}

install_commands() {
  # Register the skill's flows as namespaced Claude Code slash commands:
  # ~/.claude/commands/crypto-legal/<name>.md  becomes  /crypto-legal:<name>
  if [[ -d "$SCRIPT_DIR/commands" ]]; then
    mkdir -p "$CMD_HOME"
    local f base
    for f in "$SCRIPT_DIR"/commands/*.md; do
      [[ -e "$f" ]] || continue
      base="$(basename "$f")"
      # Re-home skill-relative links (../X) to the absolute installed skill path
      sed "s#](\.\./#]($SKILL_HOME/#g" "$f" > "$CMD_HOME/$base"
    done
    printf "${GREEN}[ok]${RESET}   commands installed to %s (namespaced as /%s:<command>)\n" "$CMD_HOME" "$SKILL_NAME"
  fi
}

install_codex() {
  if command -v codex >/dev/null 2>&1; then
    mkdir -p "$(dirname "$CODEX_HOME")"
    copy_payload "$CODEX_HOME"
    printf "${GREEN}[ok]${RESET}   mirrored to %s (codex CLI detected)\n" "$CODEX_HOME"
  fi
}

print_invocation_examples() {
  printf "\n${BOLD}Usage${RESET}\n"
  printf "  Just describe your situation in Claude Code; the skill activates on its description:\n"
  printf "    ${CYAN}\"is this mint a security? <MINT_ADDRESS>\"${RESET}\n"
  printf "    ${CYAN}\"is my airdrop legal?\"${RESET}\n"
  printf "    ${CYAN}\"review my Terms of Service\"${RESET}\n"
  printf "    ${CYAN}\"do I need a BitLicense?\"${RESET}\n"
  printf "  Or invoke it explicitly: ${CYAN}/%s${RESET}\n" "$SKILL_NAME"
  printf "  Namespaced commands: ${CYAN}/%s:triage${RESET}, ${CYAN}/%s:launch-checklist${RESET}, ${CYAN}/%s:privacy-review${RESET}, ${CYAN}/%s:airdrop-assessment${RESET}\n\n" "$SKILL_NAME" "$SKILL_NAME" "$SKILL_NAME" "$SKILL_NAME"
}

print_disclaimer() {
  printf "${BOLD}${YELLOW}═══════════════════════════════════════════════════════════${RESET}\n"
  printf "${BOLD}${YELLOW}  STANDING DISCLAIMER${RESET}\n"
  printf "${BOLD}${YELLOW}═══════════════════════════════════════════════════════════${RESET}\n"
  printf "  ${YELLOW}This skill provides INFORMATION ONLY and is not legal advice.${RESET}\n"
  printf "  ${YELLOW}It does not create an attorney-client relationship.${RESET}\n"
  printf "  ${YELLOW}Retain licensed counsel before acting on any output.${RESET}\n"
  printf "  ${YELLOW}See $SKILL_HOME/DISCLAIMER.md for the full disclaimer.${RESET}\n"
  printf "${BOLD}${YELLOW}═══════════════════════════════════════════════════════════${RESET}\n\n"
}

main() {
  banner
  prereq_check
  existing_install_check
  install_claude
  install_commands
  install_codex
  print_invocation_examples
  print_disclaimer
  printf "${GREEN}${BOLD}Done.${RESET} Current statutory review: 2026-06-15.\n\n"
}

main "$@"
