fopen() { [ -z "$1" ] && { echo "No pattern"; return 1; }; open "$(fd --hidden "$1" | fzf)"; }
ffzf() { [ -z "$1" ] && { echo "No pattern"; return 1; }; fd --hidden "$1" | fzf; }
fvim() { [ -z "$1" ] && { echo "No pattern"; return 1; }; vim "$(fd --hidden "$1" | fzf)"; }
fcd() { [ -z "$1" ] && { echo "No pattern"; return 1; }; cd "$(fd --type d --hidden "$1" | fzf)"; }

eval "$(starship init zsh)"
