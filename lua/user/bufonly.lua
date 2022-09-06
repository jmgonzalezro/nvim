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
