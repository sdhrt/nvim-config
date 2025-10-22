return {
  'OXY2DEV/markview.nvim',
  lazy = false,
  dependencies = {
    'saghen/blink.cmp',
  },
  config = function()
    vim.keymap.set('n', '<Leader>m', '<cmd>Markview Toggle<CR>')
  end,
}
