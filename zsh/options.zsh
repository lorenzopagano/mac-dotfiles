# -------------------------------------------------
# Navigation
# -------------------------------------------------
setopt autocd
setopt autopushd
setopt pushdminus
setopt pushdsilent
setopt pushdtohome
setopt pushdignoredups

# -------------------------------------------------
# Globbing / Expansion
# -------------------------------------------------
setopt extendedglob
setopt nomatch

# -------------------------------------------------
# History behaviour
# -------------------------------------------------
setopt append_history
setopt share_history
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

# -------------------------------------------------
# Completion behaviour
# -------------------------------------------------
setopt always_to_end
setopt auto_menu
setopt auto_name_dirs
setopt complete_in_word

# -------------------------------------------------
# Shell behaviour
# -------------------------------------------------
unsetopt beep
setopt multios