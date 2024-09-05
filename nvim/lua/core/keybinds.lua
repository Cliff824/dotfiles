vim.g.mapleader = " "
local keymap = vim.keymap

-- keymap.set("mode", "keys", "result")
keymap.set("i", "j/", "<ESC>")

keymap.set("n", "<leader>sv", "<C-w>v") --vertical split
keymap.set("n", "<leader>sh", "<C-w>s") --horizontal split
keymap.set("n", "<leader>sx", ":close<CR>") --close current split

keymap.set("n", "<leader>t", ":TransparentToggle<CR>")
--plugin keymaps
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")

--keymap.set("n", "<left>", "<Nop>")
--keymap.set("n", "<Up>", "<Nop>")
--keymap.set("n", "<Down>", "<Nop>")
--keymap.set("n", "<Right>", "<Nop>")
