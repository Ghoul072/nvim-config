return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local keymap = vim.keymap
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Find current word" })
    keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find by grep" })
    keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find recent files" })
  end,
}
