local M = {}

-- delete all listed buffers, except current
local function display(del, mod, term)
  local info, sep, warn, sep2, warn2 = "", "", "", "", ""
  if del == 1 then
    info = "1 buffer deleted"
  else
    info = del .. " buffers deleted"
  end
  if mod > 0 then
    sep = " ॥ "
    warn = mod .. " modified"
  end
  if term > 0 then
    sep2 = " ॥ "
    if term == 1 then
      warn2 = "1 terminal"
    else
      warn2 = term .. " terminals"
    end
  end
  vim.api.nvim_echo({
    { info, "DiagnosticInfo" },
    { sep, "Comment" },
    { warn, "DiagnosticWarn" },
    { sep2, "Comment" },
    { warn2, "DiagnosticWarn" },
  }, false, {})
end

M.bufonly = function()
  local buflist = vim.api.nvim_list_bufs()
  local sol = vim.api.nvim_get_current_buf()
  local del, mod, term = 0, 0, 0
  for _, buf in ipairs(buflist) do
    if vim.api.nvim_buf_is_valid(buf) then
      if buf ~= sol and vim.fn.buflisted(buf) == 1 then
        if vim.bo[buf].buftype == "terminal" then
          term = term + 1
        elseif vim.bo[buf].modified == true then
          mod = mod + 1
        else
          vim.api.nvim_buf_delete(buf, {})
          del = del + 1
        end
      end
    end
  end
  display(del, mod, term)
end

return M
