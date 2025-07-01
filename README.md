Download config
```
git clone https://github.com/eemax/config.git
cp config/.config .config
```
Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Install Homebrew Packages
```
brew bundle install
```
Install Vim Plug
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Apply Yazi Theme
```
ya pkg add yazi-rs/flavors:catppuccin-macchiato
```
Install Rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

```
- export rust path

nvm and node latest lts
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
nvm install --lts
nvm use --lts
```
Git credentials
```
read -p "GitHub PAT:" PAT && echo "https://eemax:$PAT@github.com" > .git-credentials
```
