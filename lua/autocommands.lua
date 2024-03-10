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
