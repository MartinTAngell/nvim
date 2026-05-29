local opt = vim.opt

-- Clipboard and mouse 
opt.clipboard = "unnamedplus"
opt.mouse = "a"

-- Split 
opt.splitright = true
opt.splitbelow = true

-- Remember past commands to allow undos
-- to persist across sessions
opt.undofile = true

-- Prevent NVIM from saving annoying files
opt.swapfile = false
opt.backup = false

-- Appearance
opt.termguicolors = true
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.wrap = true
opt.linebreak = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- Indentation
opt.tabstop = 4
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.autoindent = true
opt.smartindent = true
