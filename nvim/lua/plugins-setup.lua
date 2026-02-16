-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
  spec = {
  ("wbthomason/packer.nvim"),
  ("numToStr/Comment.nvim"), -- gcc for quick comments
  ("stevearc/oil.nvim"), --file explorer
  ("nvim-tree/nvim-web-devicons"),
  ("nvim-lualine/lualine.nvim"),
  ("mbbill/undotree"),
  {'nvim-telescope/telescope.nvim', tag = '0.1.8',
     requires = { {'nvim-lua/plenary.nvim'} }
  },
  {"ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
  },
  {'sainnhe/everforest'}, --colour
  {"windwp/nvim-autopairs"},
  {"williamboman/mason.nvim"},
  {"williamboman/mason-lspconfig.nvim"},
  {"neovim/nvim-lspconfig"},
  {"saghen/blink.cmp",
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    opts = {keymap = { preset = 'default' }},
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  {"rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}
  },
  {'mrcjkb/rustaceanvim',
    version = '^7', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
},
-- automatically check for plugin updates
checker = { enabled = true }})
vim.cmd[[colorscheme everforest]]
