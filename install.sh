#!/usr/bin/env sh
set -e

echo "Installing dotfiles with stow..."

for dir in */ ; do
  case "$dir" in
    .git/|scripts/|linux/|bin/) continue ;;
  esac
  stow "$dir"
done

echo "Dotfiles installed."
