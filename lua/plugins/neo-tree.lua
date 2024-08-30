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
    close_if_last_window = true,
    mappings = {
      ["<space>"] = "none",
    },
    filesystem = {
      hijack_netrw_behavior = "open_current",
    },
  },
  keys = {
    { "<leader>e", ":Neotree toggle float<CR>", silent = true, desc = "Toggle floating file explorer" },
    { "<leader><Tab>", ":Neotree toggle left<CR>", silent = true, desc = "Toggle left file explorer" },
  },
  lazy = false,
}

