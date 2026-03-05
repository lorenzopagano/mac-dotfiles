#!/usr/bin/env sh

echo "Updating Homebrew packages..."
if command -v brew >/dev/null 2>&1; then
    brew update && brew upgrade
fi

echo "Updating dotfiles repository..."
git pull
