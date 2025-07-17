# alias
alias vim='nvim'
alias vi='\vim'
alias config='git --git-dir=$HOME/config --work-tree=$HOME'
alias fdfzf='fd . --hidden | fzf'
alias rscp='rsync -ah --info=progress2'

# functions
#
# fzf files and open file
fopen() { local file; file=$(fd --type f --hidden --exclude .git | fzf --exit-0 --select-1) && [[ -n "$file" ]] && { command -v xdg-open &>/dev/null && xdg-open "$file" || command -v open &>/dev/null && open "$file" || echo "No file opener found (xdg-open/open)."; }; }

# fzf and open it in vim
fvim() { local item; item=$(fd --hidden --exclude .git | fzf --exit-0 --select-1) && [[ -n "$item" ]] && vim "$item"; }

# fzf dirs and cd into dir
fcd() { local dir; dir=$(fd --type d --hidden --exclude .git | fzf --exit-0 --select-1) && [[ -n "$dir" ]] && cd "$dir"; }

# bun completions
[ -s "/Users/mm/.bun/_bun" ] && source "/Users/mm/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# starship
eval "$(starship init zsh)"
