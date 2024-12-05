vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Line Numbering
opt.relativenumber = true
opt.number = true 
opt.cursorline = true

-- Spacing
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Wrapping
opt.wrap = true

-- Searching
opt.ignorecase = true
opt.smartcase = true

-- Theming
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Keyboard
opt.clipboard:append("unnamedplus")

-- Splitting
opt.splitright = true
opt.splitbelow = true
