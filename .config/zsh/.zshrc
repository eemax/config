# Vi binds
bindkey -v
export KEYTIMEOUT=1

# Completions that dump to .cache
autoload -U compinit
compinit -d "$XDG_CACHE_HOME/zsh/compdump"
_comp_options+=(globdots) # With hidden files

# +---------+
# | Aliases |
# +---------+

alias cp='cp -aiv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias cat='bat'
alias ls='eza --icons --group-directories-first'
alias lsa='eza -l -a --no-permissions --no-user --git --icons --group-directories-first'
alias lsat='eza -l -a -T --git --icons --group-directories-last'
alias vim='nvim'
alias vi='\vim'
alias config='git --git-dir=$HOME/config --work-tree=$HOME'
alias rsync='rsync -ah --info=progress2'
alias fzff="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' --bind 'enter:execute(nvim {})'"

# +---------+
# | Options |
# +---------+

setopt AUTO_LIST                 # Automatically list choices on ambiguous completion.
setopt MENU_COMPLETE             # Automatically highlight first element of completion menu
setopt COMPLETE_IN_WORD          # Complete from both ends of a word.

# History
setopt APPEND_HISTORY            # Makes sure history is appended rather than overwriting it.
setopt INC_APPEND_HISTORY        # History is written as soon as they are executed, not just when shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.

# +--------+
# | Source |
# +--------+

# Zsh functions
source $ZDOTDIR/functions

# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# Zsh syntax highlighting
source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
