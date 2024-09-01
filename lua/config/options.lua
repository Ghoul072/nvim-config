vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

-- [[ Layout and Window Settings ]]

-- Sidebar
opt.relativenumber = true
opt.number = true
opt.signcolumn = 'yes'
opt.cursorline = true

-- Window Split
opt.splitright = true
opt.splitbelow = true

-- Cursor settings
opt.scrolloff = 10 -- minimum number of lines to keep above/below cursor

-- [[ Text Settings ]]

-- Save undo history
opt.undofile = true

-- Tab, indent, and space settings
opt.expandtab = true -- expand tab to spaces
opt.smartindent = true -- smarter indentations
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.wrap = false -- don't wrap lines

opt.backspace = "indent,eol,start"

-- Search and replace settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- smartly assume if you want case sensitive

-- Sync system and nvim clipboard
opt.clipboard:append('unnamedplus')

-- Disable mouse
opt.mouse = ""

opt.cmdheight = 0

