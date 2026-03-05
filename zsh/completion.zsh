# Load completion system
autoload -Uz compinit
compinit -C

# Enable completion menu
zstyle ':completion:*' menu select

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Complete special directories (., ..)
zstyle ':completion:*' special-dirs true

# Treat multiple slashes as one
zstyle ':completion:*' squeeze-slashes true

# Enable completion caching
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Colorized completion (uses LS_COLORS)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Avoid repeating arguments already used
zstyle ':completion:*:(rm|git|less):*' ignore-line true

# Better SSH completion
zstyle ':completion:*:ssh:*' tag-order hosts users
zstyle ':completion:*:scp:*' tag-order files hosts users

# Kill completion
zstyle ':completion:*:kill:*' menu yes select

# Manpage completion
zstyle ':completion:*:manuals' separate-sections true