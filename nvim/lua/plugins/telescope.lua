local status, telescope = pcall(require, "telescope.builtin")
if not status then
  return
end

vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
