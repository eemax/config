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
## Installing essentials first - Mac packages
1. Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
2. Essentials for zsh to load
```
brew install starship
brew install zoxide
brew install zsh-syntax-highlighting
```
3. also needed for load - Install Rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
## Can use zsh now

2. Install Homebrew packages
```
brew bundle install --file=~/.config/Brewfile
```
## Install essentials
1. Install nvm
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
```
2. Use latest lts
```
nvm install --lts
nvm use --lts
```
3. Install Bun
```
curl -fsSL https://bun.sh/install | bash
```
4. Install Bun global packages
```
~/.config/install-bun-global-packages.sh
```
## Clean up
```
config restore .zshrc
config restore .config/git/config
```