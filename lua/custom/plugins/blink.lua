return {
    'saghen/blink.cmp',
    event = 'BufEnter',
    version = '1.*',
    dependencies = {
        { 'L3MON4D3/LuaSnip', version = 'v2.*' },
        'rafamadriz/friendly-snippets', -- snippet source
    },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = 'default',
            ['<CR>'] = { 'fallback' },
            ['<C-y>'] = { 'select_and_accept' },
        },
        completion = {
            trigger = {
                show_on_insert_on_trigger_character = true,
                show_on_blocked_trigger_characters = {
                    "'",
                    '"',
                    '(',
                    '{',
                    '[',
                },
            },
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
