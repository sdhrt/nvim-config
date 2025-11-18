return {
    'obsidian-nvim/obsidian.nvim',
    version = '*',
    lazy = true,
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    keys = {
        { '<leader>oo', '<cmd>Obsidian<cr>', desc = 'Obsidian' },
        { '<leader>ot', '<cmd>Obsidian today<cr>', desc = 'Obsidian today' },
    },
    config = function()
        require('obsidian').setup {
            legacy_commands = false,
            workspaces = {
                {
                    name = 'personal',
                    path = '~/Notes',
                },
            },
            completion = {
                blink = true,
                nvim_cmp = false,
                min_chars = 2,
            },

            callbacks = {
                enter_note = function(note)
                    vim.keymap.set('n', '<leader>ch', '<cmd>Obsidian toggle_checkbox<cr>', {
                        buffer = note.bufnr,
                        desc = 'Toggle checkbox',
                    })
                end,
            },

            daily_notes = {
                folder = 'Journal',
            },

            frontmatter = {
                enabled = true,
            },

            follow_url_func = function(url)
                vim.fn.jobstart { 'open', url }
            end,

            open = {
                func = function(uri)
                    vim.ui.open(uri, { cmd = { 'open', '-a', '/Applications/Obsidian.app' } })
                end,
            },
            checkbox = {
                order = {
                    [' '] = { char = '󰄱', hl_group = 'ObsidianTodo' },
                    ['x'] = { char = '', hl_group = 'ObsidianDone' },
                    ['>'] = { char = '', hl_group = 'ObsidianRightArrow' },
                    ['~'] = { char = '󰰱', hl_group = 'ObsidianTilde' },
                },
            },
        }
    end,
}
