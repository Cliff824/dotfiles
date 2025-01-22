require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
   ensure_installed = {
      "lua_ls",
      "clangd",
      "arduino_language_server"
   }
})

local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({})
lspconfig.clangd.setup({})
lspconfig.arduino_language_server.setup({})
