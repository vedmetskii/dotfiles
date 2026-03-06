return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      local catppuccin = require("catppuccin")
      catppuccin.setup({
        flavour = "macchiato",
        transparent_background = true,
        term_colors = true,
        float = {
          transparent = true,
          solid = true,
        },
        integrations = {
          cmp = true,
        },
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
