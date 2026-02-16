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
      "rust_analyzer"
  }
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
-- vim.lsp.enable('rust_analyzer') don't do this as rustaceanvim does it for us
