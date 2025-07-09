# alias
alias config='git --git-dir=$HOME/config --work-tree=$HOME'
alias fdfzf='fd . --hidden | fzf'
alias rscp='rsync -ah --info=progress2'

# functions
fopen() {
  local file
  file=$(fd --type f --hidden --exclude .git | fzf --exit-0 --select-1) || return
  if [[ -n "$file" ]]; then
    if command -v xdg-open &>/dev/null; then
      xdg-open "$file"
    elif command -v open &>/dev/null; then
      open "$file"
    else
      echo "No file opener found (xdg-open/open)."
      return 1
    fi
  fi
}

fvim() {
  local item
  item=$(fd --hidden --exclude .git | fzf --exit-0 --select-1) || return
  if [[ -n "$item" ]]; then
    vim "$item"
  fi
}

fcd() {
  local dir
  dir=$(fd --type d --hidden --exclude .git \
           | fzf --exit-0 --select-1) || return
  if [[ -n "$dir" ]]; then
    cd "$dir"
  fi
}

# bun completions
[ -s "/Users/mm/.bun/_bun" ] && source "/Users/mm/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# starship
eval "$(starship init zsh)"
