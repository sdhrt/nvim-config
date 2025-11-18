return {
    'OXY2DEV/markview.nvim',
    lazy = false,
    dependencies = {
        'saghen/blink.cmp',
    },
    opts = {
        preview = {
            icon_provider = 'devicons',
        },
    },
    config = function()
        vim.keymap.set('n', '<Leader>mm', '<cmd>Markview toggle<CR>')
        vim.keymap.set('n', '<Leader>mv', '<cmd>Markview splitToggle<CR>')
    end,
}
