-- Bootstap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


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


-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
