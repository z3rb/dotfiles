#!/bin/sh
if ! command -v brew &>/dev/null; then
    echo "> Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "> Installing Homebrew formulae..."
formulae=(1password-cli bat eza git starship stow zoxide zsh-autocomplete zsh-autosuggestions zsh-syntax-highlighting)
for formula in "${formulae[@]}"; do
  brew install "$formula"
done

echo "> Installing Homebrew casks..."
casks=(1password font-fira-code-nerd-font raycast wezterm@nightly)
for cask in "${casks[@]}"; do
  brew install --cask "$cask"
done

