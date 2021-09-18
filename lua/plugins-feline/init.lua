local lsp = require('feline.providers.lsp')
local vi_mode_utils = require('feline.providers.vi_mode')

local components = {
  active = {{}, {}, {}},
  inactive = {{}, {}, {}},
}

local colors = {
    bg = Colors.bg0,
    fg = Colors.fg0
}

local vi_mode_colors = {
  NORMAL = Colors.green,
  OP = Colors.green,
  INSERT = Colors.red,
  VISUAL = Colors.blue,
  BLOCK = Colors.blue,
  REPLACE = Colors.purple,
  ['V-REPLACE'] = Colors.purple,
  ENTER = Colors.diff_blue,
  MORE = Colors.diff_blue,
  SELECT = Colors.orange,
  COMMAND = Colors.green,
  SHELL = Colors.green,
  TERM = Colors.green,
  NONE = Colors.yellow
}

local vi_mode_text = {
  NORMAL = 'NORMAL',
  OP = 'OP',
  INSERT = 'INSERT',
  VISUAL = 'VISUAL',
  BLOCK = 'VISUAL BLOCK',
  LINES = 'VISUAL LINE',
  REPLACE = 'REPLACE',
  ['V-REPLACE'] = 'V-REPLACE',
  VISUALLINE = 'TEST',
  ENTER = 'ENTER',
  MORE = 'MORE',
  SELECT = 'SELECT',
  COMMAND = 'COMMAND',
  SHELL = 'SHELL',
  TERM = 'TERM',
  NONE = 'NONE'
}

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end


local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

components.active[1][1] = {
    provider = '',
    hl = function()
        local val = {}
        val.fg = Colors.red
        val.bg = Colors.yellow
        return val
    end,
}

components.active[1][2] = {
    provider = '',
    hl = function()
        local val = {}
        val.fg = Colors.yellow
        val.bg = Colors.blue
        return val
    end,
}

components.active[1][3] = {
    provider = '',
    hl = function()
        local val = {}
        val.fg = Colors.blue
        val.bg = vi_mode_utils.get_mode_color()
        return val
    end,
}



-- vi-symbol
components.active[1][4] = {
  provider = function()
    return " " .. vi_mode_text[vi_mode_utils.get_vim_mode()]
  end,
  hl = function()
    local val = {}
    val.fg = Colors.bg0_h
    val.bg = vi_mode_utils.get_mode_color()
    -- val.style = 'bold'
    return val
  end,
  right_sep = ' '
}

-- filename
components.active[1][5] = {
  provider = 'file_info',
  hl = {
    fg = Colors.fg0,
    bg = Colors.bg0,
  },
  right_sep = ''
}

-- gitBranch
components.active[1][6] = {
  provider = 'git_branch',
  hl = {
    fg = Colors.yellow,
    bg = Colors.bg0
  }
}

-- diffAdd
components.active[1][7] = {
  provider = 'git_diff_added',
  hl = {
    fg = Colors.green,
  }
}
-- diffModfified
components.active[1][8] = {
  provider = 'git_diff_changed',
  hl = {
    fg = Colors.orange,
  }
}
-- diffRemove
components.active[1][9] = {
  provider = 'git_diff_removed',
  hl = {
    fg = Colors.red
  }
}


-- LspName
components.active[3][1] = {
  provider = 'lsp_client_names',
  hl = {
    fg = Colors.yellow
  },
  right_sep = ' '
}

-- diagnosticErrors
components.active[3][2] = {
  provider = 'diagnostic_errors',
  enabled = function() return lsp.diagnostics_exist('Error') end,
  hl = {
    fg = Colors.red,
  },
  right_sep = ' '
}
-- diagnosticWarn
components.active[3][3] = {
  provider = 'diagnostic_warnings',
  enabled = function() return lsp.diagnostics_exist('Warning') end,
  hl = {
    fg = Colors.yellow
  },
  right_sep = ' '
}
-- diagnosticHint
components.active[3][4] = {
  provider = 'diagnostic_hints',
  enabled = function() return lsp.diagnostics_exist('Hint') end,
  hl = {
    fg = Colors.bg_visual_blue,
  },
  right_sep = ' '
}
-- diagnosticInfo
components.active[3][5] = {
  provider = 'diagnostic_info',
  enabled = function() return lsp.diagnostics_exist('Information') end,
  hl = {
    fg = Colors.bg_diff_blue
  },
  right_sep = ' '
}


-- fileSize
components.active[3][6] = {
  provider = 'file_size',
  enabled = function() return vim.fn.getfsize(vim.fn.expand('%:t')) > 0 end,
  hl = {
    fg = Colors.blue
  },
  right_sep = ' '
}
-- fileEncode
components.active[3][7] = {
  provider = 'file_encoding',
  hl = {
    fg = Colors.green,
  },
  right_sep = ' '
}

-- lineInfo
components.active[3][8] = {
  provider = 'position',
  hl = {
    fg = Colors.yellow,
  },
  right_sep = ' '
}
-- linePercent
components.active[3][9] = {
  provider = 'line_percentage',
  hl = {
    fg = Colors.purple
  },
  right_sep = ' '
}



require('feline').setup({
    colors = colors,
    vi_mode_colors = vi_mode_colors,
    components = components
})
