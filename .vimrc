syntax on
map å <leader>
set showmatch
set list
set listchars=nbsp:•,trail:•,precedes:«,extends:»,tab:→\
set showbreak=↪\
set linebreak
set breakindent
set backspace=
set backspace=start
set number
"set relativenumber
set clipboard=unnamedplus
set ignorecase
set smartcase
set autoindent
set incsearch
set hlsearch
set title
set mouse=a
set scrolloff=5
set expandtab
set softtabstop=4
set wildmenu
set wildmode=list,full
set cursorline
set laststatus=2
set statusline+=\ %F
set statusline+=\ %m
set statusline+=%=
set statusline+=\ %l,%v
set statusline+=\ %y
highlight LineNr ctermfg=white
highlight StatusLine cterm=reverse
highlight StatusLineNC cterm=underline
highlight CursorLine cterm=bold
highlight CursorLineNr cterm=bold ctermfg=none
highlight TabLine cterm=reverse
highlight TabLineSel cterm=bold,reverse
highlight TabLineFill cterm=none
nnoremap <silent> <leader>l :Lexplore<CR>
nnoremap <Tab><Tab> <C-W><C-W>
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=20
let g:netrw_keepdir=0
:command WQ wq
:command Wq wq
:command W w
:command Q q
