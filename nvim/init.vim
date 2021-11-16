source $HOME/.config/nvim/vim-plug/plugins.vim
set number relativenumber
set termguicolors
colorscheme solarized8
let mapleader = "\<Space>"
set clipboard=unnamedplus
nmap <silent> <leader>t :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
let NERDTreeShowBookmarks = 1
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd vimenter * if !argc() | NERDTree | endif
