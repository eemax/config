return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  requires = { 'nvim-treesitter/nvim-treesitter-textobjects','nvim-treesitter/nvim-treesitter-context' }
}
