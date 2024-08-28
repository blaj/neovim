return {
  "coffebar/neovim-project",
  opts = {
    projects = { -- define project roots
      "D:\\Projects\\*",
      "C:\\Users\\Blaj\\AppData\\Local\\nvim",
    },
  },
  last_session_on_startup = false,
  dashboard_mode = true,
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set(
      "n",
      "<leader>pd",
      "<cmd>Telescope neovim-project discover<cr>",
      { desc = "Find project based on pattern" }
    )
    keymap.set(
      "n",
      "<leader>ph",
      "<cmd>Telescope neovim-project history<cr>",
      { desc = "Select project from recent history" }
    )
    keymap.set("n", "<leader>pr", "<cmd>NeovimProjectLoadRecent<cr>", { desc = "Open previous session" })
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
}
