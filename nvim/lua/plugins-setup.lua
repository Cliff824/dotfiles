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
   ("nvim-lua/plenary.nvim"),-- used by other plugins
   ("savq/melange"), --colorscheme
   ("numToStr/Comment.nvim"), -- gcc for quick comments
   ("nvim-tree/nvim-tree.lua"), --file explorer
   ("nvim-tree/nvim-web-devicons"), -- icons
   ("nvim-lualine/lualine.nvim"), -- line
   ("mbbill/undotree"), --undo 
   {"akinsho/toggleterm.nvim"}, --term toggle
   {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      requires = { {'nvim-lua/plenary.nvim'} }
   },
   {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
   },
   {'stevearc/vim-arduino'}, --arduino features
   {'stevearc/dressing.nvim'}, --fancy UI boxes
   {'sainnhe/everforest'}, --colour
   -- treesitter configuration
   {
     "nvim-treesitter/nvim-treesitter",
     run = function()
       local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
       ts_update()
     end
   },
   {"windwp/nvim-autopairs"}, -- autoclose parens, brackets, quotes, etc...
   ({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }), -- autoclose tags
   {"xiyaowong/transparent.nvim"},
   {"williamboman/mason.nvim"},
   {"williamboman/mason-lspconfig.nvim"},
   {"neovim/nvim-lspconfig"},
   },
   --colorscheme = {"everforest"},
   -- automatically check for plugin updates
   checker = { enabled = true },
   })
