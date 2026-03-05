# Use standard emacs keybindings
bindkey -e


# -------------------------------------------------
# Better history navigation
# -------------------------------------------------

# Search history matching current command
# Example: type "git" then press ↑
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Kill line
bindkey "^K" kill-line


# -------------------------------------------------
# FZF integration (Homebrew macOS)
# -------------------------------------------------

if [[ -f /opt/homebrew/opt/fzf/shell/key-bindings.zsh ]]; then
  source /opt/homebrew/opt/fzf/shell/key-bindings.zsh
fi

if [[ -f /opt/homebrew/opt/fzf/shell/completion.zsh ]]; then
  source /opt/homebrew/opt/fzf/shell/completion.zsh
fi