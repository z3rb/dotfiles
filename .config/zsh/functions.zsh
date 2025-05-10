#!/bin/zsh
# Navigate to new directory
mkcd () {
    mkdir -p "$1" && cd "$1"
}
