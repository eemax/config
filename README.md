## Clone Git bare repo in home dir
1. Clone bare git repo into $HOME/config
```
git clone --bare https://github.com/eemax/config.git $HOME/config
```
2. Don't show untracked files, auto setup remote origin/main
```
git --git-dir=$HOME/config --work-tree=$HOME config --local status.showUntrackedFiles no
git --git-dir=$HOME/config --work-tree=$HOME config --local push.autoSetupRemote true
```
3. Checkout config into home dir
```
git --git-dir=$HOME/config --work-tree=$HOME checkout
```
4. Add Git credentials
```
read -p "GitHub PAT:" PAT && echo "https://eemax:$PAT@github.com" > .git-credentials
```
## Installing essentials for Mac
1. Install Rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"
```
2. Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
3. Install Homebrew packages
```
brew bundle install
```
4. Install Bun
```
curl -fsSL https://bun.sh/install | bash
```
5. Source zsh for current session
```
source ~/.zshrc
```
6. Install Bun global packages
```
chmod +x ~/.config/install-bun-global-packages.sh
~/.config/install-bun-global-packages.sh
```
## Installing essentials for Linux
