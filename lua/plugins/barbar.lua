return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    local barbar = require("barbar")
    local keymap = vim.keymap

    barbar.setup({
      sidebar_filetypes = {
        NvimTree = true,
      },
    })

    keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
    keymap.set("n", "<leader>tx", "<Cmd>BufferClose<CR>", { desc = "Close current tab" })
    keymap.set(
      "n",
      "<A-Left>",
      "<Cmd>BufferPrevious<CR>",
      { noremap = true, silent = true, desc = "Go to previous tab" }
    )
    keymap.set("n", "<A-Right>", "<Cmd>BufferNext<CR>", { noremap = true, silent = true, desc = "Go to next tab" })
  end,
}
