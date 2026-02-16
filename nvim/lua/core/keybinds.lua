local keymap = vim.keymap
vim.g.mapleader = " "

keymap.set("n", "<leader>sv", "<C-w>v") --vertical split
keymap.set("n", "<leader>sh", "<C-w>s") --horizontal split
keymap.set("n", "<leader>sx", ":close<CR>") --close current split
keymap.set("n", "<leader>w", ":write<CR>")
keymap.set("n", "<leader>q", ":quit<CR>")

keymap.set("n", "<leader>pu", function () vim.pack.update() end)

keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
keymap.set("n", "<leader>o", ":Oil<CR>")

keymap.set("i", "<C-l>", "<Up>")
keymap.set("i", "<C-j>", "<Left>")
keymap.set("i", "<C-k>", "<Down>")
keymap.set("i", "<C-;>", "<Right>")
keymap.set({"n", "x"}, "l", "<Up>")
keymap.set({"n", "x"}, "j", "<Left>")
keymap.set({"n", "x"}, "k", "<Down>")
keymap.set({"n", "x"}, ";", "<Right>")

keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")

keymap.set("n", "<leader>o", ":Oil<CR>")

keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
keymap.set("n", "<leader>dc", ":DapContinue<CR>")
keymap.set("n", "<leader>dr", ":DapRestart<CR>")
keymap.set("n", "<leader>s", ":DapStepInto<CR>")
keymap.set("n", "<leader>dt", ":DapTerminate<CR>")

keymap.set('n', '<leader>ff', ":Telescope find_files<CR>")
keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>")
keymap.set('n', '<leader>fb', ":Telescope buffers<CR>")
keymap.set('n', '<leader>fh', ":Telescope help_tags<CR>")

keymap.set("n", "<leader>a", function() require('harpoon'):list():add() end)
keymap.set("n", "<leader>h", function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end)

keymap.set("n", "<C-1>", function() require('harpoon'):list():select(1) end)
keymap.set("n", "<C-2>", function() require('harpoon'):list():select(2) end)
keymap.set("n", "<C-3>", function() require('harpoon'):list():select(3) end)
keymap.set("n", "<C-4>", function() require('harpoon'):list():select(4) end)

keymap.set('n', 'K', vim.lsp.buf.hover, {})
keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

keymap.set({ 'n', 'x' }, 'cp', '"+y')
keymap.set({ 'n', 'x' }, 'cv', '"+p')

keymap.set('n', 'm', ':vsplit | terminal make<CR>')
keymap.set('n', '<leader>m', ':vsplit | terminal make run<CR>')
