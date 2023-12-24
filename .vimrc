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
set number relativenumber
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
set statusline+=%=
set statusline+=\ %m
set statusline+=\ %l,%v
set statusline+=\ [%L]
set statusline+=\ %y
set statusline+=\ %r
highlight LineNr ctermfg=white
highlight StatusLine cterm=bold
highlight CursorLine cterm=bold
highlight CursorLineNr cterm=bold ctermfg=none
nnoremap <silent> <leader>t :tabnew<CR>
nnoremap <silent> <leader>l :Lexplore<CR>
nnoremap <Tab><Tab> <C-W><C-W>
