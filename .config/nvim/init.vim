" Neovim config
source $HOME/.config/nvim/vim-plug/plugins.vim
set number relativenumber
set termguicolors
let mapleader = "å"
set clipboard+=unnamedplus

" From vimrc
set ttimeout
set ttimeoutlen=100
set list
set listchars=nbsp:•,trail:•,precedes:«,extends:»,tab:→\
set showbreak=↪\
set linebreak
set breakindent
set backspace=
set backspace=indent,eol,start
set ignorecase
set smartcase
set title
set scrolloff=2
set expandtab
set softtabstop=2
set shiftwidth=4
set tabstop=4
set cursorline
nnoremap <silent> <leader>l :Lexplore<CR>
nnoremap <Tab><Tab> <C-W><C-W>
nnoremap <leader><tab> g<tab>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
let g:netrw_browse_split=3
let g:netrw_winsize=25
let g:netrw_liststyle=3

" Neovim plugins
call plug#begin()

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
"Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

colorscheme catppuccin-mocha
command Light colorscheme catppuccin-latte
command Dark colorscheme catppuccin-mocha
