return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    local notify = require("notify")
    local api = vim.api
    local keymap = vim.keymap

    conform.setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        liquid = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
        c_sharp = { "csharpier" },
      },
      format_on_save = function(bufnr)
        if not vim.g.enable_autoformat and not vim.b[bufnr].enable_autoformat then
          return
        end

        return {
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        }
      end,
    })

    local function show_notification(message)
      notify(message, "info", { title = "conform.nvim" })
    end

    api.nvim_create_user_command("FormatToggle", function(args)
      local is_global = not args.bang

      if is_global then
        vim.g.enable_autoformat = not vim.g.enable_autoformat

        if vim.g.enable_autoformat then
          show_notification("Autoformat on save enabled globally")
        else
          show_notification("Autoformat on save disabled globally")
        end
      else
        vim.b.enable_autoformat = not vim.b.enable_autoformat

        if vim.b.enable_autoformat then
          show_notification("Autoformat on save enabled for this buffer")
        else
          show_notification("Autoformat on save disabled for this buffer")
        end
      end
    end, { desc = "Toggle autoformat", bang = true })

    keymap.set({ "n", "v" }, "<leader>mf", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
    keymap.set("n", "<leader>mt", "<cmd>FormatToggle<CR>", { desc = "Toggle autoformat" })
  end,
}
