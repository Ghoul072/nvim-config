return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
      signs_staged = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
      on_attach = function(bufnr)
        local gs = require("gitsigns")

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
        end

        -- Navigation
        map("n", "]h", gs.next_hunk, "Jump to next git [h]unk")
        map("n", "[h", gs.prev_hunk, "Jump to previous git [h]unk")

        -- Actions (normal mode)
        map("n", "<leader>hs", gs.stage_hunk, "Git stage hunk")
        map("n", "<leader>hr", gs.reset_hunk, "Git reset hunk")
        map("n", "<leader>hu", gs.undo_stage_hunk, "Git undo stage hunk")
        map("n", "<leader>hS", gs.stage_buffer, "Git stage buffer")
        map("n", "<leader>hR", gs.reset_buffer, "Git reset buffer")
        map("n", "<leader>hp", gs.preview_hunk, "Git preview hunk")
        map("n", "<leader>hb", function()
          gs.blame_line({ full = true })
        end, "Git blame line")
        map("n", "<leader>hB", gs.toggle_current_line_blame, "Git toggle line blame")
        map("n", "<leader>hd", gs.diffthis, "Git diff against index")
        map("n", "<leader>hD", function()
          gs.diffthis("@")
        end, "Git diff against last commit")

        -- Actions (visual mode)
        map("v", "<leader>hs", function()
          gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, "Git stage hunk")
        map("v", "<leader>hr", function()
          gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, "Git reset hunk")

        -- text object
        map({ "o", "x" }, "ih", ":<C-u?Gitsigns select_hunk<CR>", "Gitsigns select hunk")
      end,
    },
  },
}
