return {
  "xiantang/darcula-dark.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  priority = 1000,
  config = function()
    vim.cmd("colorscheme darcula-dark")
  end,
}
