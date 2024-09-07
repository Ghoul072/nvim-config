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
        map("n", "<leader>hs", gs.stage_hunk, "Git [s]tage hunk")
        map("n", "<leader>hr", gs.reset_hunk, "Git [r]eset hunk")
        map("n", "<leader>hS", gs.stage_buffer, "Git [S]tage buffer")
        map("n", "<leader>hu", gs.undo_stage_hunk, "Git [u]ndo stage hunk")
        map("n", "<leader>hR", gs.reset_buffer, "Git [R]eset buffer")
        map("n", "<leader>hp", gs.preview_hunk, "Git [p]review hunk")
        map("n", "<leader>hb", gs.blame_line, "Git [b]lame line")
        map("n", "<leader>hd", gs.diffthis, "Git [d]iff against index")
        map("n", "<leader>hD", function()
          gs.diffthis("@")
        end, "git [D]iff against last commit")

        -- Actions (visual mode)
        map("v", "<leader>hs", function()
          gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, "Git [s]tage hunk")
        map("v", "<leader>hr", function()
          gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, "Git [r]eset hunk")

        -- Toggles
        map("n", "<leader>tb", gs.toggle_current_line_blame, "Git [t]oggle line [b]lame")
        map("n", "<leadeer>td", gs.toggle_deleted, "Git [t]oggle [d]eleted")
      end,
    },
  },
}
