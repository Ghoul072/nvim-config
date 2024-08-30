vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

-- [[ Layout and Window Settings ]]

-- Sidebar
opt.number = true
opt.signcolumn = 'yes'

-- Window Split
opt.splitright = true
opt.splitbelow = true

-- Cursor settings
opt.scrolloff = 10

-- [[ Text Settings ]]

-- Save undo history
opt.undofile = true

-- Tab, indent, and space settings
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.expandtab = true
opt.smartindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.breakindent = true

-- Search and replace settings
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = 'split'

-- Sync system and nvim clipboard
vim.schedule(function()
  opt.clipboard = 'unnamedplus'
end)

-- Disable mouse
opt.mouse = ""

