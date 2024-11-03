vim.g.mapleader = " "

local keymap = vim.keymap

-- Ctrl+s
keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true, desc = "Ctrl+s in normal mode" })
keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true, desc = "Ctrl+s in insert mode" })
keymap.set("v", "<C-s>", "<Esc>:w<CR>gv", { noremap = true, silent = true, desc = "Ctrl+s in visual mode" })

-- Exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
