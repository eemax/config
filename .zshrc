# Zsh config for Mac

# De-duplicate PATH entries automatically (safe to run multiple times)
typeset -U path

# Default editor
export EDITOR="nvim"
export VISUAL="nvim"

# +-------------------+
# |  Exporting paths  |
# +-------------------+

# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Bun
export PATH="$BUN_INSTALL/bin:$PATH"

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# GNU coreutils instead of BSD
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
# Colors the dirs for zstyles
#eval "$(gdircolors -b)"
eval "$(dircolors -b $HOME/.config/dircolors)"

# Vi binds
bindkey -v
export KEYTIMEOUT=1

# History substring completions with arrow up and down keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Load compinit autocompletions
autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files

# +------------------------------------------+
# |  Load tool completions (after compinit)  |
# +------------------------------------------+

# Brew autoloadable functions (including completions)
FPATH="/opt/homebrew/share/zsh/site-functions:${FPATH}"

# Bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# NVM completions
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# +-----------+
# |  Zstyles  |
# +-----------+

zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:descriptions' format '%U%F{magenta}%B→ %d%b%f%u'
zstyle ':completion:*:messages' format '%F{yellow}%d%f'
zstyle ':completion:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:warnings' format '%F{red}✗ No matches%f'
zstyle ':completion:*:*:-command-:*:*' group-order aliases builtins functions commands
# Case-insensitive matching + partial matching
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*'

# Options
#setopt CORRECT_ALL               # Tries to correct commands, arguments, filenames
setopt LIST_AMBIGUOUS            # Complete as much of a completion until it gets ambiguous
setopt COMPLETE_IN_WORD          # Complete from both ends of a word.
setopt AUTOCD
setopt AUTOPUSHD
setopt PUSHD_IGNORE_DUPS

# History
HISTSIZE=10000                   # Commands kept in memory
SAVEHIST=10000                   # Commands saved to $HISTFILE across sessions
setopt APPEND_HISTORY            # Makes sure history is appended rather than overwriting it.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.

# +-----------+
# |  Sources  |
# +-----------+

# Zsh plugins
source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "/opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
source "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Starship
eval "$(starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"
#
#EXPORTS

# FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS="--height 90% \
--layout reverse \
--color 'fg:white, fg+:bright-white'"
#
#
#  ╔═════════════════════════════════════════════════════════╗
#  ║  █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗     ║
#  ║ ██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝     ║
#  ║ ███████║██║     ██║███████║███████╗█████╗  ███████╗     ║
#  ║ ██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║     ║
#  ║ ██║  ██║███████╗██║██║  ██║███████║███████╗███████║     ║
#  ║ ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝     ║
#  ╚═════════════════════════════════════════════════════════╝

alias cp='cp -aiv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias ll='eza -l --header --modified --accessed --created --git --icons --group-directories-first'
alias ls='ls --color=auto'
alias l='eza -l -G --no-time --no-filesize --no-permissions --no-user --git --icons --group-directories-first'
alias la='eza -l -a -G --no-time --no-filesize --no-permissions --no-user --git --icons --group-directories-first'
alias lat2='eza -T -L=2 -l -a --no-time --no-filesize --no-permissions --no-user --git --icons --group-directories-first'
alias vim='nvim'
alias vi='\vim'
alias config='git --git-dir=$HOME/config --work-tree=$HOME'
alias rsync='rsync -ah --info=progress2'
alias fzfbat="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' --bind 'enter:execute(nvim {})'"

# cd back using 1-9
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

alias term='nvim -c "terminal"'

# FUNCTIONS
# fzf and open it in vim
fvim() { local item; item=$(fd --hidden --exclude .git | fzf --exit-0 --select-1) && [[ -n "$item" ]] && vim "$item"; }

# fzf dirs and cd into dir
fcd() { local dir; dir=$(fd --type d --hidden --exclude .git | fzf --exit-0 --select-1) && [[ -n "$dir" ]] && cd "$dir"; }

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/ml/.lmstudio/bin"
# End of LM Studio CLI section

