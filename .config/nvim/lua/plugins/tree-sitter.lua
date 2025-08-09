return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  requires = { 'nvim-treesitter/nvim-treesitter-textobjects','nvim-treesitter/nvim-treesitter-context' },
  opts = {
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    ensure_installed = {
      "lua",
      "vim",
      "c",
      "cpp",
      "python",
      "javascript",
      "typescript",
      "json",
      "ruby",
      "rust",
    },
  }
}
