#!/usr/bin/env bash

set -e

DOTFILES_DIR="$HOME/.dotfiles"

echo "📦 Installing dotfiles..."

if [ ! -d "$DOTFILES_DIR" ]; then
  git clone https://github.com/lorenzopagano/mac-dotfiles.git "$DOTFILES_DIR"
fi

cd "$DOTFILES_DIR"

echo "🍺 Installing Homebrew packages..."
brew bundle || true

echo "🔗 Applying dotfiles with stow..."
stow -R zsh vim config bin tmux starship

echo "⚡ Reloading shell..."
exec zsh