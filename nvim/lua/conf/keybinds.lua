vim.g.mapleader = " "

vim.keymap.set("n", "<leader>sv", "<C-w>v") --vertical split
vim.keymap.set("n", "<leader>sh", "<C-w>s") --horizontal split
vim.keymap.set('n', 't', ':vsplit | terminal<CR>')
vim.keymap.set("n", "<leader>sx", ":close<CR>") --close current split
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")

vim.keymap.set("n", "<leader>pu", function () vim.pack.update() end)

vim.keymap.set("n", "<leader>o", ":Oil<CR>")

vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>")
vim.keymap.set("n", "<leader>dr", ":DapRestart<CR>")
vim.keymap.set("n", "<leader>ds", ":DapStepInto<CR>")
vim.keymap.set("n", "<leader>dt", ":DapTerminate<CR>")

vim.keymap.set('n', '<leader>ff', ":Pick files<CR>")
vim.keymap.set('n', '<leader>fg', ":Pick grep_live<CR>")
vim.keymap.set('n', '<leader>fb', ":Pick buffers<CR>")
vim.keymap.set('n', '<leader>fh', ":Pick help<CR>")

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set({'n'}, '<leader>lf', vim.lsp.buf.format)


vim.keymap.set({ 'n', 'x' }, 'cp', '"+y')
vim.keymap.set({ 'n', 'x' }, 'cv', '"+p')

vim.keymap.set('i', 'jk', '<ESC>')
