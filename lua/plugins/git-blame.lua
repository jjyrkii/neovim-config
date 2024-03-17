return {
  'f-person/git-blame.nvim',
  keys = {
    { '<leader>gb', '<cmd>GitBlameToggle<CR>', desc = '[g]it [b]lame' },
  },
  config = function()
    require('gitblame').setup {
      --Note how the `gitblame_` prefix is omitted in `setup`
      enabled = true,
    }
  end,
}
