vim.pack.add({
  {src = "https://github.com/numToStr/Comment.nvim"},-- gcc for quick comments
  {src = "https://github.com/stevearc/oil.nvim"},
  {src = "https://github.com/nvim-tree/nvim-web-devicons"},
  {src = "https://github.com/nvim-lualine/lualine.nvim"},
  {src = "https://github.com/mbbill/undotree"},
  {src = "https://github.com/nvim-lua/plenary.nvim"},
  {src = "https://github.com/nvim-telescope/telescope.nvim", tag = '0.1.8'},
  {src = "https://github.com/ThePrimeagen/harpoon", version = "harpoon2"},
  {src = "https://github.com/sainnhe/everforest"},
  {src = "https://github.com/windwp/nvim-autopairs"},
  {src = "https://github.com/williamboman/mason.nvim"},
  {src = "https://github.com/williamboman/mason-lspconfig.nvim"},
  {src = "https://github.com/neovim/nvim-lspconfig"},
  {src = "https://github.com/rafamadriz/friendly-snippets"},
  {src = "https://github.com/saghen/blink.cmp", version = 'v1.9.1'},
  {src = "https://github.com/mfussenegger/nvim-dap"},
  {src = "https://github.com/nvim-neotest/nvim-nio"},
  {src = "https://github.com/rcarriga/nvim-dap-ui"},
  {src = "https://github.com/mrcjkb/rustaceanvim", version = 'v8.0.0'},
  -- {src = "https://github.com/"},
})

vim.cmd[[colorscheme everforest]]
