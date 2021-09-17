local lsp = require 'feline.providers.lsp'
local vi_mode_utils = require 'feline.providers.vi_mode'

local vi_mode_Colors = {
    NORMAL = Colors.green,
    INSERT = Colors.red,
    VISUAL = Colors.magenta,
    OP = Colors.green,
    BLOCK = Colors.blue,
    REPLACE = Colors.violet,
    ['V-REPLACE'] = Colors.violet,
    ENTER = Colors.cyan,
    MORE = Colors.cyan,
    SELECT = Colors.orange,
    COMMAND = Colors.green,
    SHELL = Colors.green,
    TERM = Colors.green,
    NONE = Colors.yellow
}

local icons = {
    linux = ' ',
    macos = ' ',
    windows = ' ',

    errs = ' ',
    warns = ' ',
    infos = ' ',
    hints = ' ',

    lsp = ' ',
    git = ''
}

components.active[1][1] = {
    provider = 'vi_mode',
    hl = function()
        return {
            name = require('feline.providers.vi_mode').get_mode_highlight_name(),
            fg = require('feline.providers.vi_mode').get_mode_color(),
            style = 'bold'
        }
    end,
    right_sep = ' ',
    -- Uncomment the next line to disable icons for this component and use the mode name instead
    -- icon = ''
}

