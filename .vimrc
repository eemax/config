syntax on
colorscheme desert
map å <leader>
set showmatch
set list
set listchars=nbsp:•,trail:•,precedes:«,extends:»,tab:→\
set showbreak=↪\
set number
set clipboard=unnamedplus
set ignorecase
set smartcase
set mouse=a
set scrolloff=5
"set nowrap
"set sidescroll=1
"set sidescrolloff=15
set expandtab
set softtabstop=4
set cursorline
highlight CursorLine cterm=bold ctermfg=none ctermbg=none
highlight CursorLineNr cterm=bold ctermfg=none ctermbg=none
highlight TabLineFill ctermfg=8
highlight TabLineSel ctermbg=8
highlight TabLine ctermfg=8 ctermbg=none
set wildmenu
set wildmode=list,full
nnoremap <silent> <leader>t :tabnew<CR>
nnoremap <silent> <leader>l :Lexplore<CR>
nnoremap <Tab><Tab> <C-W><C-W>
set laststatus=2
set statusline+=\ %F
"set statusline+=\ %f
set statusline+=%=
set statusline+=\ %m
set statusline+=\ %l:%c
set statusline+=\ [%L]
set statusline+=\ %y
set statusline+=\ %r
highlight StatusLine cterm=bold ctermfg=1 ctermbg=none
