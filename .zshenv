# XDG
export XDG_CONFIG_HOME="$HOME/.config"
#export XDG_DATA_HOME="$XDG_CONFIG_HOME/.local/share"
#export XDG_STATE_HOME="$XDG_CONFIG_HOME/.local/state"
#export XDG_CACHE_HOME="$XDG_CONFIG_HOME/.cache"

# Editor
export EDITOR="code"
export VISUAL="code"

# FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS="--height 90% \
--layout reverse \
--color 'fg:white, fg+:bright-white'"

# Zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

# Less
#export LESSHISTFILE="$XDG_STATE_HOME/less"

# Tool directories (so scripts can find them)
export BUN_INSTALL="$HOME/.bun"
export NVM_DIR="$HOME/.nvm"
