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

keymap.set("n", "<leader>aa", ":ArduinoAttach<CR>")
keymap.set("n", "<leader>ab", ":ArduinoChooseBoard<CR>")
keymap.set("n", "<leader>av", ":ArduinoVerify<CR>")
keymap.set("n", "<leader>au", ":ArduinoUpload<CR>")
keymap.set("n", "<leader>aus", ":ArduinoUploadAndSerial<CR>")
keymap.set("n", "<leader>as", ":ArduinoSerial<CR>")
keymap.set("n", "<leader>ap", ":ArduinoChooseProgrammer<CR>")

keymap.set("n", "<leader>vt", ":ToggleTerm<CR>")
keymap.set("n", "<leader>vtc", ":TermExec cmd='gcc main.c && ./a.out'<CR>")

--vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
--vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})

keymap.set('n', 'K', vim.lsp.buf.hover, {})
keymap.set('n', 'gd', vim.lsp.buf.definition, {})
keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})


keymap.set({ 'n', 'x' }, 'cp', '"+y')
keymap.set({ 'n', 'x' }, 'cv', '"+p')
