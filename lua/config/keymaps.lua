vim.g.mapleader = " "

local keymap = vim.keymap

-- Ctrl+s
keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true, desc = "Ctrl+s in normal mode" })
keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true, desc = "Ctrl+s in insert mode" })
keymap.set("v", "<C-s>", "<Esc>:w<CR>gv", { noremap = true, silent = true, desc = "Ctrl+s in visual mode" })

-- Map Ctrl+Z - undo
keymap.set("n", "<C-z>", "u", { noremap = true, silent = true, desc = "Ctrl+z in normal mode" })
keymap.set("i", "<C-z>", "<Esc>ua", { noremap = true, silent = true, desc = "Ctrl+z in insert mode" })
keymap.set("v", "<C-z>", "<Esc>ugv", { noremap = true, silent = true, desc = "Ctrl+z in visual model" })

-- Map Ctrl+Shift+Z - redo
keymap.set("n", "<C-S-z>", ":redo<CR>", { noremap = true, silent = true, desc = "Ctrl+Shift+z in normal mode" })
keymap.set("i", "<C-S-z>", "<Esc>:redo<CR>a", { noremap = true, silent = true, desc = "Ctrl+Shift+z in insert mode" })
keymap.set("v", "<C-S-z>", "<Esc>:redo<CR>gv", { noremap = true, silent = true, desc = "Ctrl+Shift+z in visual mode" })

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

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
keymap.set("n", "<A-Left>", ":tabp<CR>", { noremap = true, silent = true, desc = "Go to previous tab" })
keymap.set("n", "<A-Right>", ":tabn<CR>", { noremap = true, silent = true, desc = "Go to next tab" })
