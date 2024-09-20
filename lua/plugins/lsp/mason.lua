return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jay-babu/mason-nvim-dap.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")
    local mason_nvim_dap = require("mason-nvim-dap")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "html",
        "cssls",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "pyright",
        "angularls",
        "sqlls",
        "omnisharp",
        "phpactor",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "eslint_d",
        "csharpier",
      },
    })

    mason_nvim_dap.setup({
      automatic_installation = true,
      handlers = {
        function(config)
          require("mason-nvim-dap").default_setup(config)
        end,
        php = function(config)
          config.configurations = {
            {
              type = "php",
              request = "launch",
              name = "Listen for XDebug",
              port = 9003,
              log = true,
              pathMappings = {
                ["/var/www/html/"] = vim.fn.getcwd() .. "/",
              },
              hostname = "0.0.0.0",
            },
          }

          require("mason-nvim-dap").default_setup(config)
        end,
        chrome = function(config)
          config.configurations = {
            type = "pwa-chrome",
            request = "launch",
            name = 'Launch Chrome with "localhost"',
            url = function()
              local co = coroutine.running()
              return coroutine.create(function()
                vim.ui.input({ prompt = "Enter URL: ", default = "http://localhost:3000" }, function(url)
                  if url == nil or url == "" then
                    return
                  else
                    coroutine.resume(co, url)
                  end
                end)
              end)
            end,
            port = 9222,
            webRoot = vim.fn.getcwd(),
            protocol = "inspector",
            sourceMaps = true,
            userDataDir = false,
            skipFiles = { "<node_internals>/**", "node_modules/**", "${workspaceFolder}/node_modules/**" },
            resolveSourceMapLocations = {
              "${workspaceFolder}/apps/**/**",
              "${workspaceFolder}/**",
              "!**/node_modules/**",
            },
          }
        end,
      },
      ensure_installed = {
        "c_sharp",
        "php",
        "js",
        "chrome",
      },
    })
  end,
}
