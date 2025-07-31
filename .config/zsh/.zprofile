# +-------+
# | Paths |
# +-------+

# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Bun (path + initialization)
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/Users/mm/.bun/_bun" ] && source "/Users/mm/.bun/_bun" # This loads bun completions

# NVM (initialization)
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion, same for zsh