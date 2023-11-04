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
}
