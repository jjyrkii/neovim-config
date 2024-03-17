-- nvim v0.8.0
return {
  keys = {
    { '<leader>gg', '<cmd>LazyGit<CR>', desc = 'LazyGit' },
  },
  'kdheepak/lazygit.nvim',
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  -- optional for floating window border decoration
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
}
