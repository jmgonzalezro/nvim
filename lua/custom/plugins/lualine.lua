local show_venv = function()
    -- only show virtual env for Python
    if vim.bo.filetype ~= 'python' then
        return ""
    end
    local venv_path = os.getenv('VIRTUAL_ENV')

    if venv_path == nil then
        return "<NO VENV>"
    else
        local venv_name = vim.fn.fnamemodify(venv_path, ':t')
        return string.format("  %s", venv_name)
    end
end





return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            icons_enabled = false,
            theme = 'auto',
            component_separators = '|',
            section_separators = { '' },
            -- component_separators = { left = '', right = '' },
            -- section_separators = { left = '', right = '' },
            disabled_filetypes = {
                statusline = {},
                winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            -- globalstatus = true,
            globalstatus = vim.opt.laststatus == 0,
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
            }
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { 'filename' },
            lualine_x = { show_venv, 'fileformat', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'filename' },
            lualine_x = { 'location' },
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
    }
}
