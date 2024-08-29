local api = vim.api

api.nvim_create_autocmd({ "BufLeave", "FocusLost", "VimLeavePre" }, {
  group = api.nvim_create_augroup("autosave", {}),
  callback = function(event)
    if api.nvim_buf_get_option(event.buf, "modified") then
      vim.schedule(function()
        api.nvim_buf_call(event.buf, function()
          vim.cmd("silen! write")
        end)
      end)
    end
  end,
})
