vim.g.dashboard_default_executive = 'telescope'


vim.g.dashboard_custom_section = {
    a = {description = {'  Find File           '}, command = 'Telescope find_files'},
    b = {description = {'  Recently Used Files '}, command = 'Telescope oldfiles'},
    e = {description = {'  Edit init.lua       '}, command = ':e $MYVIMRC'},
    f = {description = {'  Colorschemes        '}, command = ':e lua/colors/init.lua'},
    g = {description = {'  File Browser        '}, command = 'NvimTreeToggle'}
}
