return {
    'echasnovski/mini.surround',
    version = false,
    custom_surroundings = {
        s = {
            input = { find = '%[%[.-%]%]', extract = '^(..).*(..)$' },
            output = { left = '[[', right = ']]' },
        },
    },
    search_method = 'cover_or_next',
}
