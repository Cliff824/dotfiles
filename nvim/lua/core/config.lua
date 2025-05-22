local opt = vim.opt

opt.number = true

opt.wrap = false

-- indents & tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- search
opt.ignorecase = true

-- appearence
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

-- system clipboard
opt.clipboard:append("unnamedplus")

-- splits
opt.splitright = true
opt.splitbelow = true

-- word joiner
opt.iskeyword:append("-")
opt.iskeyword:append("_")


vim.api.nvim_set_option("clipboard","unnamed") 
