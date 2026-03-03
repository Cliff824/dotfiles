vim.g.mapleader = " "

vim.keymap.set("n", "<leader>sv", "<C-w>v") --vertical split
vim.keymap.set("n", "<leader>sh", "<C-w>s") --horizontal split
vim.keymap.set('n', 'm', ':vsplit | terminal<CR>')
vim.keymap.set("n", "<leader>sx", ":close<CR>") --close current split
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")

vim.keymap.set("n", "<leader>pu", function () vim.pack.update() end)

vim.keymap.set("n", "<leader>o", ":Oil<CR>")

vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>")
vim.keymap.set("n", "<leader>dr", ":DapRestart<CR>")
vim.keymap.set("n", "<leader>s", ":DapStepInto<CR>")
vim.keymap.set("n", "<leader>dt", ":DapTerminate<CR>")

vim.keymap.set('n', '<leader>ff', ":Telescope find_files<CR>")
vim.keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>")
vim.keymap.set('n', '<leader>fb', ":Telescope buffers<CR>")
vim.keymap.set('n', '<leader>fh', ":Telescope help_tags<CR>")

vim.keymap.set("n", "<leader>a", function() require('harpoon'):list():add() end)
vim.keymap.set("n", "<leader>h", function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end)

vim.keymap.set("n", "<C-1>", function() require('harpoon'):list():select(1) end)
vim.keymap.set("n", "<C-2>", function() require('harpoon'):list():select(2) end)
vim.keymap.set("n", "<C-3>", function() require('harpoon'):list():select(3) end)
vim.keymap.set("n", "<C-4>", function() require('harpoon'):list():select(4) end)

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set({'n'}, '<leader>lf', vim.lsp.buf.format)


vim.keymap.set({ 'n', 'x' }, 'cp', '"+y')
vim.keymap.set({ 'n', 'x' }, 'cv', '"+p')
