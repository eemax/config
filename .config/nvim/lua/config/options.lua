-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.clipboard:append("unnamedplus")

-- From vimrc
-- vim.opt.ttimeout = true
-- vim.opt.ttimeoutlen = 100
vim.opt.list = true
vim.opt.listchars = {
  nbsp = "␣",
  trail = "•",
  precedes = "«",
  extends = "»",
  tab = "→ "
}
vim.opt.ignorecase = true
vim.opt.smartcase = true
--vim.opt.title = true
vim.opt.scrolloff = 8
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.opt.wrap = false
vim.opt.updatetime = 100

-- Key mappings
vim.keymap.set('n', '<leader>l', ':Lexplore<CR>', { silent = true })
vim.keymap.set('n', '<Tab><Tab>', '<C-W><C-W>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>') -- in terminal mode exit with esc
vim.keymap.set('n', '<leader><tab>', 'g<tab>')
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
