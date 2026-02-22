-- files
vim.lsp.log.set_level("off")
vim.o.backup = false
vim.o.swapfile = false
vim.o.undofile = false
vim.o.updatetime = 300
vim.o.autoread = true

-- indents & tabs
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.wrap = false
vim.o.number = true
vim.o.wrap = false

-- search
vim.o.ignorecase = true

-- appearence
vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"
vim.o.cursorline = true
vim.o.backspace = "indent,eol,start"

-- system clipboard
vim.opt.clipboard = "unnamedplus"

-- splits
vim.o.splitright = true
vim.o.splitbelow = true

-- word joiner
vim.opt.iskeyword:append("-")
vim.opt.iskeyword:append("_")
