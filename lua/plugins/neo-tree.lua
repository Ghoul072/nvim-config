return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  opts = {
    filesystem = {
      hijack_netrw_behavior = "open_current",
    },
  },
  keys = {
    { "<leader>e", "<CMD>Neotree toggle float<CR>", silent = true, desc = "Toggle floating file explorer" },
  },
  lazy = false,
}

