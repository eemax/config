# Vi binds
bindkey -v
export KEYTIMEOUT=1

# Completions
autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files

# Options
setopt AUTO_LIST                 # Automatically list choices on ambiguous completion.
setopt MENU_COMPLETE             # Automatically highlight first element of completion menu
setopt COMPLETE_IN_WORD          # Complete from both ends of a word.

# History
HISTSIZE=10000                   # Commands kept in memory
SAVEHIST=10000                   # Commands saved to $HISTFILE across sessions
setopt APPEND_HISTORY            # Makes sure history is appended rather than overwriting it.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.

# +-----------+
# |  Sources  |
# +-----------+

# Shell
source $XDG_CONFIG_HOME/shell/functions
source $XDG_CONFIG_HOME/shell/aliases
source $XDG_CONFIG_HOME/shell/exports

# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Zsh syntax highlighting
source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
