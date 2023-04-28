local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
   return
end

return packer.startup(function(use)
   use("wbthomason/packer.nvim")
   
   use("nvim-lua/plenary.nvim")-- used by other plugins

   use("savq/melange") --colorscheme

   use("numToStr/Comment.nvim") -- gcc for quick comments

   use("nvim-tree/nvim-tree.lua") --file explorer

   use("nvim-tree/nvim-web-devicons") -- icons

   use("nvim-lualine/lualine.nvim") -- line

   use("mbbill/undotree") --undo 
   
   -- treesitter configuration
   use({
     "nvim-treesitter/nvim-treesitter",
     run = function()
       local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
       ts_update()
     end,
   })

   -- auto closing
   use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
   use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

   use("xiyaowong/transparent.nvim")

   if packer_bootstrap then
      require("packer").sync()
   end

end)
