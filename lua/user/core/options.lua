local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.autoindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.softtabstop = 4
opt.expandtab = true

opt.wrap = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = true
opt.incsearch = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

-- opt.textwidth = 80;
-- opt.colorcolumn = "80"
opt.signcolumn = "yes"

opt.termguicolors = true
opt.background = "dark"

opt.mouse = 'a'

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.iskeyword:append("-")

opt.splitright = true
opt.splitbelow = true































