# Load zsh color definitions
autoload -Uz colors
colors

# Enable colored output in supported tools
export CLICOLOR=1

# Less should display colors correctly
export LESS='-R'

# BAT (modern cat replacement)
export BAT_THEME="TwoDark"