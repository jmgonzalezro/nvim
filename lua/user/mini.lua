require('mini.cursorword').setup()
require('mini.surround').setup({
    custom_surroundings = {
      s = {
        input = { find = '%[%[.-%]%]', extract = '^(..).*(..)$' },
        output = { left = '[[', right = ']]' },
      },
    },
    search_method = 'cover_or_next',
  })
