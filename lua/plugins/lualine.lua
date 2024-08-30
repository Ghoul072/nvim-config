return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  opts = {
    theme = "auto",
    extensions = { "neo-tree", "lazy" },
  },
}
