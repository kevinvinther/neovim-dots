-- much inspiration taken from: https://github.com/thanhvule0310/dotfiles/blob/f6f0e765b7f499a904525b9949e83b4ef8c70ef7/nvim/lua/plugins/configs/lualine.lua
local ok, lualine = pcall(require, "lualine")

if not ok then
    return
end
local mode_color = {
    n = Colors.purple,
    i = Colors.green,
    v = Colors.purple,
    c = Colors.red,
    no = Colors.purple,
    s = Colors.orange,
    [""] = Colors.orange,
    ic = Colors.yellow,
    R = Colors.purple,
    Rv = Colors.purple,
    cv = Colors.red,
    ce = Colors.red,
    r = Colors.purple,
    rm = Colors.purple,
    ["r?"] = Colors.purple,
    ["!"] = Colors.red,
    t = Colors.red,
}

local conditions = {
    buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand "%:t") ~= 1
    end,
    hide_in_width = function()
        return false
        -- local squeeze_width = vim.fn.winwidth(0) / 2
        -- if squeeze_width > 75 then
        --     return true
        -- end
        -- return false
    end,
    check_git_workspace = function()
        local filepath = vim.fn.expand "%:p:h"
        local gitdir = vim.fn.finddir(".git", filepath .. ";")
        return gitdir and #gitdir > 0 and #gitdir < #filepath
    end,
}

local config = {
    options = {
        globalstatus = false,
        component_separators = "",
        section_separators = "",
        theme = {
            normal = { c = { fg = Colors.fg1, bg = Colors.bg1 } },
            inactive = { c = { fg = Colors.fg1, bg = Colors.bg } },
        },
        disabled_filetypes = { },
    },
    sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
    },
    inactive_sections = {
        lualine_a = {},
        lualine_v = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
    },
}

local function ins_left(component)
    table.insert(config.sections.lualine_c, component)
end

local function ins_right(component)
    table.insert(config.sections.lualine_x, component)
end

local function ins_left_inactive(component)
    table.insert(config.inactive_sections.lualine_c, component)
end

local function ins_right_inactive(component)
    table.insert(config.inactive_sections.lualine_x, component)
end

ins_left {
    function()
        vim.api.nvim_command("hi LualineViModeStart guibg=" .. mode_color[vim.fn.mode()])
        return " "
    end,
    color = "LualineViModeStart",
    padding = { right = 0 },
}

ins_left {
    function()
        vim.api.nvim_command(
            "hi LualineViMode guifg="
                .. mode_color[vim.fn.mode()]
                .. " guibg="
                .. Colors.bg0_h
                .. " gui=bold cterm=bold"
        )
        return require("lualine.utils.mode").get_mode()
    end,
    icons_enabled = true,
    color = "LualineViMode",
    padding = { right = 1, left = 1 },
}

ins_left {
    function()
        return ""
    end,
    color = { fg = Colors.bg0_h, bg = Colors.bg1 },
    padding = 0,
}

ins_left {
    "filetype",
    fmt = string.upper,
    -- cond = conditions.hide_in_width,
    icons_enabled = true,
    color = { fg = Colors.fg1, bg = Colors.bg1 },
}

ins_left {
    "filename",
    cond = conditions.buffer_not_empty or conditions.hide_in_width,
    color = { fg = Colors.fg1, gui = "italic" },
}

ins_left {
    "filesize",
    icon = "",
    color = { fg = Colors.bg1 },
}

ins_left { "location", icon = "", color = { fg = Colors.fg1 }, cond = conditions.hide_in_width }

ins_left { "progress", color = { fg = Colors.fg1, gui = "bold" }, cond = conditions.hide_in_width }

ins_left {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    symbols = { error = " ", warn = " ", info = " ", hint = " " },
    cond = conditions.hide_in_width,
    diagnostics_color = {
        color_error = { fg = Colors.red },
        color_warn = { fg = Colors.yellow },
        color_info = { fg = Colors.purple },
    },
}

ins_left {
    function()
        return "%="
    end,
}

ins_right {
    function()
        local msg = "No Active Lsp"
        local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
        local clients = vim.lsp.get_active_clients()
        if next(clients) == nil then
            return msg
        end
        for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 and client.name ~= "null-ls" then
                return client.name
            end
        end
        return msg
    end,
    icon = "",
    cond = conditions.hide_in_width and conditions.buffer_not_empty,
    color = { fg = Colors.fg1 },
}

-- Add components to right sections
ins_right {
    "o:encoding",
    fmt = string.upper,
    cond = conditions.hide_in_width or conditions.buffer_not_empty,
    color = { fg = Colors.fg1 },
}

ins_right {
    "fileformat",
    fmt = string.upper,
    cond = conditions.hide_in_width or conditions.buffer_not_empty,
    icons_enabled = true,
    color = { fg = Colors.fg1 },
}

ins_right {
    function()
        return vim.opt.tabstop:get()
    end,
    icon = "הּ",
    cond = conditions.buffer_not_empty,
    color = { fg = Colors.fg1 },
}

ins_right {
    function()
        return ""
    end,
    color = { fg = Colors.bg0_h, bg = Colors.bg1 },
    cond = conditions.check_git_workspace,
    padding = 0,
}

ins_right {
    "branch",
    icon = "",
    cond = conditions.check_git_workspace,
    color = { fg = Colors.purple, bg = Colors.bg0_h, gui = "bold" },
}

ins_right {
    "diff",
    symbols = { added = " ", modified = " ", removed = " " },
    cond = conditions.hide_in_width,
    diff_color = {
        added = { fg = Colors.green, bg = Colors.bg0_h },
        modified = { fg = Colors.orange, bg = Colors.bg0_h },
        removed = { fg = Colors.red, bg = Colors.bg0_h },
    },
}

ins_right {
    function()
        vim.api.nvim_command("hi LualineViModeEnd guibg=" .. mode_color[vim.fn.mode()])
        return " "
    end,
    color = "LualineViModeEnd",
    padding = { right = 0 },
}

-- Inactive
ins_left_inactive {
    function()
        return " "
    end,
    color = { bg = Colors.fg1 },
    padding = { right = 0 },
}

ins_left_inactive {
    "filename",
    cond = conditions.buffer_not_empty,
    color = { fg = Colors.fg1, bg = Colors.bg0_h, gui = "bold" },
}

ins_left_inactive {
    function()
        return ""
    end,
    color = { fg = Colors.bg0_h, bg = Colors.bg },
    padding = 0,
}

lualine.setup(config)
