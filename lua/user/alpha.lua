local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[                               __                ]],
	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

imperialcourier = {
[[     .  . '    .                                             ]],
[[      '   .            . '            .                +           ]],
[[              `                          '    . ']],
[[        .                         ,'`.                         .]],
[[   .                  .."    _.-;'    `.              .    ]],
[[              _.-"`.##%"_.--" ,'        `.           "#"     ___,,od000]],
[[           ,'"-_ _.-.--"\   ,'            `-_       '%#%',,/////00000HH]],
[[         ,'     |_.'     )`/-     __..--""`-_`-._    J L/////00000HHHHM]],
[[ . +   ,'   _.-"        / /   _-""           `-._`-_/___\///0000HHHHMMM]],
[[     .'_.-""      '    :_/_.-'                 _,`-/__V__\0000HHHHHMMMM]],
[[ . _-""                         .        '   _,////\  |  /000HHHHHMMMMM]],
[[_-"   .       '  +  .              .        ,//////0\ | /00HHHHHHHMMMMM]],
[[       `                                   ,//////000\|/00HHHHHHHMMMMMM]],
[[.             '       .  ' .   .       '  ,//////00000|00HHHHHHHHMMMMMM]],
[[     .             .    .    '           ,//////000000|00HHHHHHHMMMMMMM]],
[[                  .  '      .       .   ,///////000000|0HHHHHHHHMMMMMMM]],
[[  '             '        .    '         ///////000000000HHHHHHHHMMMMMMM]],
[[                    +  .  . '    .     ,///////000000000HHHHHHHMMMMMMMM]],
[[     '      .              '   .       ///////000000000HHHHHHHHMMMMMMMM]],
[[   '                  . '              ///////000000000HHHHHHHHMMMMMMMM]],
[[                           .   '      ,///////000000000HHHHHHHHMMMMMMMM]],
[[       +         .        '   .    .  ////////000000000HHHHHHHHMMMMMMhs]],
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return imperialcourier 
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
