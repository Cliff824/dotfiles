-- files
vim.lsp.log.set_level("off")
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.updatetime = 300
vim.opt.autoread = true

-- indents & tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.wrap = false

-- search
vim.opt.ignorecase = true

-- appearence
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"
vim.opt.cursorline = true
vim.opt.backspace = "indent,eol,start"

-- system clipboard
vim.opt.clipboard = "unnamedplus"

-- splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- woptrd joiner
vim.opt.iskeyword:append("-")
vim.opt.iskeyword:append("_")

-- mouse only in normal and visual
vim.opt.mouse = "nv"
