<<<<<<< HEAD
-- local null_ls = require("null-ls")
-- local api = vim.api
--
-- local no_really = {
--     method = null_ls.methods.DIAGNOSTICS,
--     filetypes = { "markdown", "text" },
--     generator = {
--         fn = function(params)
--             local diagnostics = {
--                 null_ls.builtings.diagnostics
--             }
--             -- sources have access to a params object
--             -- containing info about the current file and editor state
--             for i, line in ipairs(params.content) do
--                 local col, end_col = line:find("really")
--                 if col and end_col then
--                     -- null-ls fills in undefined positions
--                     -- and converts source diagnostics into the required format
--                     table.insert(diagnostics, {
--                         row = i,
--                         col = col,
--                         end_col = end_col,
--                         source = "no-really",
--                         message = "Don't use 'really!'",
--                         severity = 2,
--                     })
--                 end
--             end
--             return diagnostics
--         end,
--     },
-- }
--
-- null_ls.register(no_really)
local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

local formatting = null_ls.builtins.formatting

local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    debug = false,
    sources = {
        formatting.autopep8,
        formatting.black,
        diagnostics.pyright,
    }
=======
local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
		-- formatting.black.with({ extra_args = { "--fast" } }),
		formatting.autopep8,
		formatting.stylua,
    -- diagnostics.flake8
	},
>>>>>>> adc41517aa1cf82da2da701187a2ee0baad383aa
})
