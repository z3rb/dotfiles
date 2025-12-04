#!/usr/bin/env zsh
set -euo pipefail

# Set paths for package lists
PKG_DIR="${0:A:h}/packages"
FORMULAE_FILE="${PKG_DIR}/formulae.txt"
CASKS_FILE="${PKG_DIR}/casks.txt"

# Ensure Homebrew
if ! command -v brew &>/dev/null; then
  echo "> Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
elif ! brew doctor &>/dev/null; then
  echo "> Updating Homebrew..."
  brew update
fi

# Load clean list into array
load_list() {
  local file="$1"
  [[ -f "$file" ]] || { echo "File $file not found, skipping..."; return 1 }
  echo ${(f)"$(grep -vE '^\s*#' "$file" | sed '/^\s*$/d')"}
}

# Install formulae from file
install_formulae() {
  [[ -f "$FORMULAE_FILE" ]] || return 0
  local -a formulae
  formulae=($(load_list "$FORMULAE_FILE"))
  [[ ${#formulae} -eq 0 ]] && return 0

  echo "> Installing Homebrew formulae from ${FORMULAE_FILE}..."
  for formula in "${formulae[@]}"; do
    if ! brew list "$formula" &>/dev/null; then
      brew install "$formula"
    else
      brew upgrade "$formula"
    fi
  done
}

# Install casks from file
install_casks() {
  [[ -f "$CASKS_FILE" ]] || return 0
  local -a casks
  casks=($(load_list "$CASKS_FILE"))
  [[ ${#casks} -eq 0 ]] && return 0

  echo "> Installing Homebrew casks from ${CASKS_FILE}..."
  for cask in "${casks[@]}"; do
    if ! brew list --cask "$cask" &>/dev/null; then
      brew install --cask "$cask"
    else
      brew upgrade --cask "$cask"
    fi
  done
}

install_formulae
install_casks
