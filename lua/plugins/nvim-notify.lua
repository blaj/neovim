return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")

    notify.setup({
      render = "default",
    })
  end,
}
