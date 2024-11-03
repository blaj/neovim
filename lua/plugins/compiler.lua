return {
  "Zeioth/compiler.nvim",
  cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
  dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
  opts = {},
  keys = {
    { "<leader>oc", "<cmd>CompilerOpen<CR>", desc = "Open compiler" },
  },
}
