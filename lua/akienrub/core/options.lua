local opt = vim.opt

-- Enable line numbers and relative line numbers
opt.number = true
opt.relativenumber = true

-- ALWAYS use the clipboard for ALL operations 
opt.clipboard='unnamedplus'

-- Tabs
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- After line break auto tab
opt.smartindent = true

-- Do not wrap long lines
opt.wrap = false

-- Appearance
-- Enable 24bit colors
opt.termguicolors = true
opt.signcolumn = "yes"

-- Always show at least 8 lines
opt.scrolloff = 8

-- If this many milliseconds nothing is typed the swap file will be
opt.updatetime = 50

-- Columns that show where line should end. 80-softcap 120-hardcap
opt.colorcolumn = "120"

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- split windows
opt.splitright = true
opt.splitbelow = true
