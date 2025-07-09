# 1. Clone bare git repo
```
git clone --bare https://github.com/eemax/config.git $HOME/config
```
# 2. Do not show untracked files
```
git --git-dir=$HOME/config --work-tree=$HOME config --local status.showUntrackedFiles no
git --git-dir=$HOME/config --work-tree=$HOME config --local push.autoSetupRemote true
```
# 3. Checkout
```
git --git-dir=$HOME/config --work-tree=$HOME checkout
```
# 4. If needed, add to .zshrc or .bashrc
```
alias config='git --git-dir=$HOME/config --work-tree=$HOME'
```
Install Rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

```
- export rust path

bun install

```
curl -fsSL https://bun.sh/install | bash
```
Git credentials
```
read -p "GitHub PAT:" PAT && echo "https://eemax:$PAT@github.com" > .git-credentials

Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Install Homebrew Packages
```
brew bundle install
```
