-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"
-- Create alias mapping so å also acts as leader
vim.keymap.set('', 'å', '<leader>', { remap = true })

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.clipboard:append("unnamedplus")

-- From vimrc
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 100
vim.opt.list = true
vim.opt.listchars = {
  nbsp = "•",
  trail = "•",
  precedes = "«",
  extends = "»",
  tab = "→ "
}
vim.opt.showbreak = "↪ "
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.backspace = ""  -- Clear first
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.title = true
vim.opt.scrolloff = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.cursorline = true

-- Key mappings
vim.keymap.set('n', '<leader>l', ':Lexplore<CR>', { silent = true })
vim.keymap.set('n', '<Tab><Tab>', '<C-W><C-W>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>') -- in terminal mode exit with esc
vim.keymap.set('n', '<leader><tab>', 'g<tab>')
vim.keymap.set('n', '<leader>1', '1gt')
vim.keymap.set('n', '<leader>2', '2gt')
vim.keymap.set('n', '<leader>3', '3gt')
vim.keymap.set('n', '<leader>4', '4gt')
