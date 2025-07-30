# source
source $ZDOTDIR/.zsh_functions

# alias
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias cat='bat'
alias ls='eza --icons --group-directories-first'
alias lsa='eza -l -a --no-permissions --no-user --git --icons --group-directories-first'
alias lsat='eza -l -a -T --git --icons --group-directories-last'
alias vim='nvim'
alias vi='\vim'
alias config='git --git-dir=$HOME/config --work-tree=$HOME'
alias rsync='rsync -ah --info=progress2'

autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files

# +---------+
# | Options |
# +---------+

setopt AUTO_LIST            # Automatically list choices on ambiguous completion.
setopt MENU_COMPLETE        # Automatically highlight first element of completion menu
setopt COMPLETE_IN_WORD     # Complete from both ends of a word.

# history
setopt APPEND_HISTORY            # Makes sure history is appended rather than overwriting it.
setopt INC_APPEND_HISTORY        # History is written as soon as they are executed, not just when shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.

# vi binds
bindkey -v
export KEYTIMEOUT=1

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/Users/mm/.bun/_bun" ] && source "/Users/mm/.bun/_bun" # This loads bun completions

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion, same for zsh

# starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

# zsh syntax highlighting
source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
