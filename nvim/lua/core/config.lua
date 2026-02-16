local opt = vim.opt

opt.number = true
opt.wrap = false

vim.lsp.set_log_level("off")

-- indents & tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = false

-- search
opt.ignorecase = true

-- appearence
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.winborder = "rounded"

opt.backspace = "indent,eol,start"

-- system clipboard
opt.clipboard:append("unnamedplus")
vim.api.nvim_set_option("clipboard","unnamed")

-- splits
opt.splitright = true
opt.splitbelow = true

-- word joiner
opt.iskeyword:append("-")
opt.iskeyword:append("_")

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
