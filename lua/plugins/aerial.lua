return {
  "stevearc/aerial.nvim",
  opts = {},
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local aerial = require("aerial")

    aerial.setup({})

    local keymap = vim.keymap

    keymap.set("n", "<leader>ao", "<cmd>AerialOpen<CR>", { desc = "Open Aerial window" })
    keymap.set("n", "<leader>ax", "<cmd>AerialClose<CR>", { desc = "Close Aerial window" })
  end,
}
