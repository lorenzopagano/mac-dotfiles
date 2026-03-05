#!/usr/bin/env bash

set -e

DOTFILES_DIR="$HOME/.dotfiles"

echo "📦 Installing dotfiles..."

if [ ! -d "$DOTFILES_DIR" ]; then
  git clone https://github.com/lorenzopagano/dotfiles.git "$DOTFILES_DIR"
fi

cd "$DOTFILES_DIR"

echo "🍺 Installing Homebrew packages..."
brew bundle

echo "🔗 Applying dotfiles with stow..."
stow zsh
stow vim
stow config
stow bin

echo "⚡ Reloading shell..."
exec zsh