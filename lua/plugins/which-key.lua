return {
  "folke/which-key.nvim",
  event = "VimEnter",
  opts = {
    preset = "helix",
  },
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
}
