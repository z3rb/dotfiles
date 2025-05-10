#!/bin/zsh
# Navigate to new directory
mkcd () {
    mkdir -p "$1" && cd "$1"
}

# List object metadata
lom () {
    eza -ahlo --time-style="+%Y-%m-%d %H:%M"
}
