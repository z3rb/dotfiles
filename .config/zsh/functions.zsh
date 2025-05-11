#!/bin/bash
# Navigate to new directory
mkcd() {
    mkdir -p "$1"
    cd "$1" || exit
}

# Compare lines between two sorted files
venn() {
    echo "> Lines common to $1 and $2:"
    comm -12 "$1" "$2"

    echo "> Lines unique to $1:"
    comm -23 "$1" "$2"

    echo "> Lines unique to $2:"
    comm -13 "$1" "$2"
}
