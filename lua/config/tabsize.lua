local opt = vim.opt
local api = vim.api

local function set_tabsize(spaces)
  opt.tabstop = spaces
  opt.shiftwidth = spaces
end

api.nvim_create_autocmd("FileType", {
  pattern = "php",
  callback = function()
    set_tabsize(4)
  end,
})

api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function()
    set_tabsize(4)
  end,
})

api.nvim_create_autocmd("FileType", {
  pattern = "js",
  callback = function()
    set_tabsize(2)
  end,
})
