return {
  "MoaidHathot/dotnet.nvim",
  cmd = "DotnetUI",
  config = function()
    local dotnet = require("dotnet")

    dotnet.setup({})

    local keymap = vim.keymap

    keymap.set("n", "<leader>dn", "<cmd>DotnetUI new_item<CR>", { desc = "Add new dotnet item" })
    keymap.set("n", "<leader>df", "<cmd>DotnetUI file bootstrap<CR>", { desc = "Bootstrap a new cs file" })
    keymap.set("n", "<leader>dpa", "<cmd>DotnetUI project package add<CR>", { desc = "Add new Nuget package" })
    keymap.set("n", "<leader>dpr", "<cmd>DotnetUI project package remove<CR>", { desc = "Remove Nuget package" })
    keymap.set("n", "<leader>dra", "<cmd>DotnetUI project reference add<CR>", { desc = "Add project reference" })
    keymap.set("n", "<leader>drr", "<cmd>DotnetUI project reference remove<CR>", { desc = "Remove project reference" })
  end,
}
