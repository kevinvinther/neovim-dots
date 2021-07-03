local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'LuaTree','vista','dbui'}


-- Color.green = Colors.green
-- Colors.gb

local buffer_not_empty = function()
  if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

gls.left[1] = {
  FirstElement = {
    provider = function() return '▋' end,
    highlight = {Colors.green,Colors.green}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      local alias = {n = 'NORMAL',i = 'INSERT',c= 'COMMAND',v= 'VISUAL',V= 'VISUAL LINE', [''] = 'VISUAL BLOCK', R = 'REPLACEMENT'}
      return alias[vim.fn.mode()]
    end,
    separator = '  ',
    separator_highlight = {Colors.green,function()
      if not buffer_not_empty() then
        return Colors.green
      end
      return clear
    end},
    highlight = {Colors.bg0,Colors.green},
  },
}
gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,clear},
  },
}
gls.left[4] = {
  FileName = {
    provider = {'FileName','FileSize'},
    condition = buffer_not_empty,
    separator = '',
    separator_highlight = {Colors.bg0_h,clear},
    highlight = {Colors.fg0,clear}               -- Unsure
  }
}

gls.left[5] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = buffer_not_empty,
    highlight = {Colors.orange,Colors.bg0_h},
  }
}
gls.left[6] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = buffer_not_empty,
    highlight = {Colors.fg0,Colors.bg0_h},
  }
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 60 then
    return true
  end
  return false
end

gls.left[7] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = '   ',
    highlight = {Colors.green,Colors.bg0_h},
  }
}
gls.left[8] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = '   ',
    highlight = {Colors.orange,Colors.bg0_h},
  }
}
gls.left[9] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = '   ',
    highlight = {Colors.red,Colors.bg0_h},
  }
}
gls.left[10] = {
  LeftEnd = {
    provider = function() return '' end,
    separator = '',
    separator_highlight = {Colors.bg0_h,clear},
    highlight = {Colors.bg0_h,Colors.bg0_h}
  }
}
gls.left[11] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {Colors.red,clear}
  }
}
gls.left[13] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {Colors.yellow,clear},
  }
}
gls.right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    separator = '',
    separator_highlight = {Colors.bg0_h,clear},
    highlight = {Colors.fg0,Colors.bg0_h},
  }
}
gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' | ',
    separator_highlight = {Colors.bg0_h,Colors.bg0_h},
    highlight = {Colors.fg0,Colors.bg0_h},
  },
}
gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = '',
    separator_highlight = {Colors.bg0,Colors.bg0_h},
    highlight = {Colors.fg0,Colors.bg0},
  }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = '',
    separator_highlight = {Colors.bg0_h,Colors.bg0},
    highlight = {Colors.fg0,Colors.bg0_h}
  }
}


gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = '',
    separator_highlight = {Colors.bg0_h,Colors.bg0},
    highlight = {Colors.fg0,Colors.bg0_h}
  }
}
