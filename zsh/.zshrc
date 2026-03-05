# Dotfiles directory
export DOTFILES="$HOME/.dotfiles"

for file in $DOTFILES/zsh/*.zsh; do
  source "$file"
done

eval "$(starship init zsh)"