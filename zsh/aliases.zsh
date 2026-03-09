alias ls="eza --icons"
alias ll="eza -lah"
alias cat="bat"
alias grep="rg"
alias g="git"
alias :c='clear'
alias :q='exit'
alias grep='grep --color=auto'
alias mkdir='mkdir -p'
# Use neovim if installed
if command -v nvim >/dev/null 2>&1; then
  alias vim='nvim'
fi