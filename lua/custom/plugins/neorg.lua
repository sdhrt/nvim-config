return {
  'nvim-neorg/neorg',
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = '*', -- Pin Neorg to the latest stable release
  dependencies = {
    'nvim-neorg/lua-utils.nvim',
  },
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {},
        ['core.concealer'] = {
          config = {},
        },
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/notes',
            },
            default_workspace = 'notes',
          },
        },
      },
    }
    vim.keymap.set('n', '<Leader>j', '<cmd>Neorg journal today<CR>')
    vim.wo.foldlevel = 99
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'norg',
      callback = function()
        vim.wo.conceallevel = 2
      end,
    })
  end,
}
