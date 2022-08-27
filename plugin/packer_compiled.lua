-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jmgonzalezro/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jmgonzalezro/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jmgonzalezro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jmgonzalezro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jmgonzalezro/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim.git"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim.git"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip.git"
  },
  ["alpha-nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim.git"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim.git"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer.git"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline.git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp.git"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path.git"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip.git"
  },
  colorschemes = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/colorschemes",
    url = "https://github.com/lunarvim/colorschemes.git"
  },
  ["cutlass.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/cutlass.nvim",
    url = "https://github.com/gbprod/cutlass.nvim.git"
  },
  ["darkplus.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/darkplus.nvim",
    url = "https://github.com/lunarvim/darkplus.nvim.git"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets.git"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim.git"
  },
  gruvbox = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox.git"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material.git"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim.git"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim.git"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim.git"
  },
  ["mini.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim.git"
  },
  neodim = {
    config = { "\27LJ\2\n¸\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\thide\1\0\3\17virtual_text\2\14underline\2\nsigns\2\21update_in_insert\1\0\2\ndelay\3d\venable\2\1\0\2\16blend_color\f#000000\nalpha\4\0€€ ÿ\3\nsetup\vneodim\frequire\0" },
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/neodim",
    url = "https://github.com/zbirenbaum/neodim.git"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim.git"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim.git"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs.git"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp.git"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer.git"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig.git"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre.git"
  },
  ["nvim-transparent"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/nvim-transparent",
    url = "https://github.com/xiyaowong/nvim-transparent.git"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua.git"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter.git"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring.git"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons.git"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim.git"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim.git"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim.git"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim.git"
  },
  ["python-syntax"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/python-syntax",
    url = "https://github.com/Guzzii/python-syntax.git"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim.git"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim.git"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim.git"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye.git"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime.git"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/jmgonzalezro/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim.git"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neodim
time([[Config for neodim]], true)
try_loadstring("\27LJ\2\n¸\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\thide\1\0\3\17virtual_text\2\14underline\2\nsigns\2\21update_in_insert\1\0\2\ndelay\3d\venable\2\1\0\2\16blend_color\f#000000\nalpha\4\0€€ ÿ\3\nsetup\vneodim\frequire\0", "config", "neodim")
time([[Config for neodim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
