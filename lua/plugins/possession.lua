return {
  'jedrzejboczar/possession.nvim',
  requires = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('possession').setup {
      autosave = {
        current = true,
        tmp = true,
      },
    }
    require('telescope').load_extension 'possession'

    vim.keymap.set('n', '<leader>S', function()
      require('telescope').extensions.possession.list()
    end, { desc = '[S]essions' })
  end,
}
