return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    local catppuccin = require("catppuccin")

    catppuccin.setup({
      flavour = "mocha",
      integrations = {
        notify = true,
        aerial = true,
        --barbecue = true,
        gitsigns = true,
        which_key = true,
        nvim_surround = true,
        overseer = true,
        mason = true,
        lsp_trouble = true
      }
    })

    vim.cmd("colorscheme catppuccin")
  end,
}
