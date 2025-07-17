" Neovim specific
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
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=20
let g:netrw_keepdir=0

colorscheme habamax

" WIP
" nmap <silent> <leader>t :NERDTreeToggle<Enter>
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" let NERDTreeShowHidden = 1
" let NERDTreeShowBookmarks = 1
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" autocmd vimenter * if !argc() | NERDTree | endif
