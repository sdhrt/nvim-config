return {
  'saghen/blink.cmp',
  event = 'InsertEnter',
  version = '1.*',
  dependencies = {
    { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    'rafamadriz/friendly-snippets', -- snippet source
  },
  opts = {
    keymap = {
      preset = 'enter',
      -- ['<CR>'] = { 'accept_and_enter' },
      -- ['<CR>'] = {
      --   function(cmp)
      --     cmp.accept()
      --   end,
      --   -- 'fallback',
      -- },
      ['<C-n>'] = { 'select_next', 'fallback' },
      ['<C-p>'] = { 'select_prev', 'fallback' },
      ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
    },

    completion = {
      documentation = { auto_show = true, auto_show_delay_ms = 500 },
    },

    signature = { enabled = true },

    fuzzy = { implementation = 'prefer_rust_with_warning' },

    snippets = { preset = 'luasnip' },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'lazydev' },
      providers = {
        lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
      },
    },
  },
}
