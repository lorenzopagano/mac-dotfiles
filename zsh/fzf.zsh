# Better defaults for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d'

#| shortcut | cosa fa              |
#| -------- | -------------------- |
#| CTRL-R   | history fuzzy search |
#| CTRL-T   | file picker          |
#| ALT-C    | jump directory       |
#| ↑        | history matching     |
