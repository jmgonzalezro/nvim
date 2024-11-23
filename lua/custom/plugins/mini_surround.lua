return {
    'echasnovski/mini.surround',
    version = false,
    config = function()
        require('mini.surround').setup {}
    end,
    custom_surroundings = {
        s = {
            input = { find = '%[%[.-%]%]', extract = '^(..).*(..)$' },
            output = { left = '[[', right = ']]' },
        },
    },
    search_method = 'cover_or_next',
    mappings = {
        add = 'sa',          -- Add surrounding in Normal and Visual modes
        delete = 'sd',       -- Delete surrounding
        find = '',           -- Find surrounding (to the right)
        find_left = '',      -- Find surrounding (to the left)
        highlight = '',      -- Highlight surrounding
        replace = '',        -- Replace surrounding
        update_n_lines = '', -- Update `n_lines`

        suffix_last = '',    -- Suffix to search with "prev" method
        suffix_next = '',    -- Suffix to search with "next" method
    },
}
