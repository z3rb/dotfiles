#!/bin/zsh
if ! command -v brew &>/dev/null; then
    echo "> Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "> Installing Homebrew formulae..."
brew install git

