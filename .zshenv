# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_STATE_HOME="$XDG_CONFIG_HOME/local/state"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

# fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS="--height 90% \
--layout reverse \
--color 'fg:white, fg+:bright-white' \
--preview 'bat --color=always --style=numbers --line-range=:500 {}' \
--bind 'enter:execute(nvim {})'"

# editor
export EDITOR="nvim"
export VISUAL="nvim"

# path
. "$HOME/.cargo/env"
