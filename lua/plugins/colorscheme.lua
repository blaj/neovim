return {
  "Mofiqul/vscode.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  priority = 1000,
  config = function()
    local scheme = require("vscode")

    scheme.setup({
      style = "dark",
    })

    scheme.load()
    -- vim.cmd("colorscheme onedark")
  end,
}
