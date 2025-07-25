return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim', -- Make it search blazingly fast
      build = 'make'
    }
  },
  config = function()
    require('telescope').setup {
      extensions = {
        fzf = {}
      }
    }
    require('telescope').load_extension('fzf')

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope: Find Files' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope: Help Tags' })
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Telescope: Keymaps' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope: Find Buffers' })
    vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Telescope: Find Buffers' })
    vim.keymap.set('n', '<leader>fn', function()
        builtin.find_files {
          cwd = vim.fn.stdpath('config')
        }
      end,
      { desc = 'Telescope: Edit Neovim Config' })
    vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope: Grep' })
    vim.keymap.set('n', '<leader>sb', builtin.current_buffer_fuzzy_find, { desc = 'Telescope: Search Buffer' })
  end
}
