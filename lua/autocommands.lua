-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Define autocmd for entering insert mode
vim.cmd [[
    augroup RelativeLineNumbersInsert
        autocmd!
        autocmd InsertEnter * set norelativenumber | set number
        autocmd InsertLeave * set relativenumber | set number
    augroup END
]]

-- Session neotree
local config_group = vim.api.nvim_create_augroup('MyConfigGroup', {}) -- A global group for all your config autocommands
vim.api.nvim_create_autocmd({ 'User' }, {
  pattern = 'SessionLoadPost',
  group = config_group,
  callback = function()
    vim.cmd [[Neotree left]]
  end,
})

-- Auto save session
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  callback = function()
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
      -- Don't save while there's any 'nofile' buffer open.
      if vim.api.nvim_get_option_value('buftype', { buf = buf }) == 'nofile' then
        return
      end
    end
    session_manager.save_current_session()
  end,
})
