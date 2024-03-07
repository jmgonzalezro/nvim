return {
    'EvWilson/slimux.nvim',
    config = function()
        local slimux = require('slimux')
        slimux.setup({
            target_socket = slimux.get_tmux_socket(),
            target_pane = string.format('%s.2', slimux.get_tmux_window()),
            escaped_strings = { '\\', ';', '"', '$' }
        })
    end
}
