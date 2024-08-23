local opt = vim.opt


-- [[ Initial Load Configs ]]

-- Set Leader
vim.g.mapleader = ' '
vim.g.maplocalleadeer = ' '

-- Set Nerd Font
vim.g.have_nerd_font = true


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
opt.tabstop = 4
opt.shiftwidth = 4
opt.breakindent = true

-- Search and replace settings
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = 'split'

-- Sync system and nvim clipboard
vim.schedule(function()
	opt.clipboard = 'unnamedplus'
end)

-- Timeout settings
opt.updatetime = 250
opt.timeoutlen = 300



