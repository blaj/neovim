return {
  "stevearc/overseer.nvim",
  cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
  config = function()
    local overseer = require("overseer")

    overseer.setup({
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1,
      },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>ot", "<cmd>OverseerToggle<CR>", { desc = "Open overseer task list" })
    keymap.set("n", "<leader>or", "<cmd>OverseerRun<CR>", { desc = "Select and start task" })
  end,
}
