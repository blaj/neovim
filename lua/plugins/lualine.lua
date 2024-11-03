return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")

    lualine.setup({
      options = {
        theme = "catppuccin",
      },
      extensions = {
        "nvim-tree",
        "aerial",
        "mason",
        "lazy",
        "nvim-dap-ui",
        "overseer",
        "trouble"
      }
    })
  end,
}
