return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-tree/nvim-web-devicons',
    'nvim-telescope/telescope-ui-select.nvim',
  },
  config = function()
    local keymap = vim.keymap
    local telescope = require 'telescope'
    local builtin = require 'telescope.builtin'

    telescope.setup {
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown()
        },
      },
    }

    pcall(telescope.load_extension, 'fzf')
    pcall(telescope.load_extension, 'ui-select')

    keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[f]ind [h]elp' })
    keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[f]ind [k]eymaps' })
    keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[f]ind [f]iles' })
    keymap.set('n', '<leader>fs', builtin.builtin, { desc = '[f]ind [s]elect Telescope' })
    keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[f]ind current [w]ord' })
    keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[f]ind by [g]rep' })
    keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[f]ind [d]iagnostics' })
    keymap.set('n', '<leader>fr', builtin.resume, { desc = '[f]ind [r]esume' })
    keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = '[f]ind recent files ("." for repeat)' })
    keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'Find existing buffers' })
  end,
}
