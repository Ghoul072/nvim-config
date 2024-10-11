return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
      lualine_bold = true,
      on_colors = function(colors)
        colors.bg = ""
      end,
    })
    vim.cmd([[colorscheme tokyonight-night]])
  end,
}
