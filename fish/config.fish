set PATH $PATH ~/.cargo/bin

abbr --add ,aptuu 'sudo apt update && apt list --upgradable && sudo apt upgrade'
abbr --add ,sudop 'sudo PATH=$PATH'
abbr --add ,gh 'history|grep'

# python virtual env
abbr --add ,ve 'python3 -m venv ./venv'
abbr --add ,va 'source ./venv/bin/activate'

# works as cp -r with a progress bar
abbr --add ,cp 'rsync -ah --info=progress2'

# ls sort by modified or ls -a with dir first
abbr --add ,lst 'ls -t'
abbr --add ,lsd 'ls --group-directories-first -a'

# move to trash instead of rm. mac uses ~/.Trash
abbr --add ,rm 'mv --force -t ~/.local/share/Trash'

# cd to git top level
abbr --add ,gt 'cd (git rev-parse --show-toplevel)'
