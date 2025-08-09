return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,

  opts = {
    flavour = "macchiato",
    background = {
      light = "latte",
      dark = "mocha",
    },
    transparent_background = true,
    integrations = {
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
    },
  },

  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
