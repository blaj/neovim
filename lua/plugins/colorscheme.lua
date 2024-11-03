return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    local scheme = require("catppuccin")

    scheme.setup({
      style = "macchiato",
      default_integrations = true,
    })

    -- scheme.load()
    vim.cmd("colorscheme catppuccin")
  end,
}
