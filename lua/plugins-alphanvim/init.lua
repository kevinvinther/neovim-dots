local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'
dashboard.section.header.val = {
    [[                       _ ]],
    [[ _ __   ___  _____   _(_)_ __ ___ ]],
    [[| '_ \ / _ \/ _ \ \ / | | '_ ` _ \ ]],
    [[| | | |  __| (_) \ V /| | | | | | | ]],
    [[|_| |_|\___|\___/ \_/ |_|_| |_| |_| ]],
}
dashboard.section.buttons.val = {
    dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "SPC f", "  telescope" , "<leader>ff"),
    dashboard.button( "SPC q", "  Quit NVIM" , ":qa<CR>"),
}
local handle = io.popen('fortune')
local fortune = handle:read("*a")
handle:close()
dashboard.section.footer.val = fortune
alpha.setup(dashboard.opts)