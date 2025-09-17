return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>')
    require('nvim-tree').setup {
      renderer = {
        indent_width = 3,
        icons = {
          git_placement = 'after',
          glyphs = {
            git = {
              unstaged = '×',
              staged = '',
              unmerged = '󰧾',
              untracked = '',
              renamed = '',
              deleted = '',
              ignored = '∅',
            },
            folder = {
              arrow_closed = ' ',
              arrow_open = ' ',
            },
          },
        },
      },
    }
  end,
}
