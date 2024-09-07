return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tabs",
        separator_style = "slant",
        always_show_bufferline = false,
      },
      highlights = {
        buffer_selected = {
          bold = true,
          italic = false,
        },
        numbers_selected = {
          bold = true,
          italic = false,
        },
        diagnostic_selected = {
          bold = true,
          italic = false,
        },
        hint_selected = {
          bold = true,
          italic = false,
        },
        hint_diagnostic_selected = {
          bold = true,
          italic = false,
        },
        info_selected = {
          bold = true,
          italic = false,
        },
        info_diagnostic_selected = {
          bold = true,
          italic = false,
        },
        warning_selected = {
          bold = true,
          italic = false,
        },
        warning_diagnostic_selected = {
          bold = true,
          italic = false,
        },
        error_selected = {
          bold = true,
          italic = false,
        },
        error_diagnostic_selected = {
          bold = true,
          italic = false,
        },
      },
    })
  end,
}
