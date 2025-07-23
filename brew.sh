#!/bin/zsh
if ! command -v brew &>/dev/null; then
    echo "> Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "> Installing Homebrew formulae..."
brew install bat eza git starship stow zoxide zsh-autocomplete zsh-autosuggestions zsh-syntax-highlighting

echo "> Installing Homebrew casks..."
brew install --cask font-fira-code-nerd-font wezterm@nightly
