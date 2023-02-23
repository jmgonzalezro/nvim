-- Set lualine as statusline
-- See `:help lualine.txt`
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'gruvbox',
    component_separators = '|',
    section_separators = '',
  },
}


-- old lualine config
local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
    colored = true,
    update_in_insert = false,
	always_visible = true,
}

local diff = {
	"diff",
	colored = true,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width
}

local mode = {
	"mode",
	fmt = function(str)
		-- return "-- " .. str .. " --"
        return str
	end,
}

local filetype = {
	"filetype",
	icons_enabled = true,
	icon = nil,
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

local location = {
	"location",
	padding = 0,
}

local function split(input, delimiter)
    local arr = {}
    string.gsub(input, '[^' .. delimiter ..']+', function(w) table.insert(arr, w) end)
    return arr
end

local function get_venv()
	local venv = vim.env.VIRTUAL_ENV
	if venv then
		local params = split(venv, '/')
		return '(env:'..params[table.getn(params)]..')'
	else
		return ' NO VENV'
	end
end
-- cool function for progress
local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = {"██", "▇▇", "▆▆", "▅▅", "▄▄", "▃▃", "▂▂", "▁▁", "__"}
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end

-- I'm not displaying spaces, so we don't need this function
-- local spaces = function()
-- 	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
-- end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { mode},
		lualine_b = { branch},
        lualine_c = {{"filename", path = 1}},
        lualine_x = {get_venv, "fileformat", "filetype"},
        lualine_y = { diagnostics },
		lualine_z = { progress },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "encoding", "fileformat", "filetype" },
		lualine_x = { diff, 'filetype', 'fileformat'},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
