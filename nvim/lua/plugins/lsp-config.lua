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
      "arduino_language_server",
      "html",
      "eslint",
      "cssls",
      "zls"
   }
})

local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({})
lspconfig.clangd.setup({})
lspconfig.html.setup({})
lspconfig.eslint.setup({})
lspconfig.cssls.setup({})
lspconfig.zls.setup({})
lspconfig.arduino_language_server.setup{}
