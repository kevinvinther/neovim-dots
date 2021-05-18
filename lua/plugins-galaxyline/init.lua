local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'LuaTree','vista','dbui'}


-- Color.green = Colors.base0B
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
    highlight = {Colors.base0B,Colors.base0B}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      local alias = {n = 'NORMAL',i = 'INSERT',c= 'COMMAND',v= 'VISUAL',V= 'VISUAL LINE', [''] = 'VISUAL BLOCK', R = 'REPLACEMENT'}
      return alias[vim.fn.mode()]
    end,
    separator = '  ',
    separator_highlight = {Colors.base0B,function()
      if not buffer_not_empty() then
        return Colors.base0B
      end
      return Colors.base00
    end},
    highlight = {Colors.base00,Colors.base0B},
  },
}
gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,Colors.base00},
  },
}
gls.left[4] = {
  FileName = {
    provider = {'FileName','FileSize'},
    condition = buffer_not_empty,
    separator = '',
    separator_highlight = {Colors.base04,Colors.base00},
    highlight = {Colors.base07,Colors.base00}               -- Unsure
  }
}

gls.left[5] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = buffer_not_empty,
    highlight = {Colors.base09,Colors.base04},
  }
}
gls.left[6] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = buffer_not_empty,
    highlight = {Colors.base07,Colors.base04},
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
    highlight = {Colors.base0B,Colors.base04},
  }
}
gls.left[8] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = '   ',
    highlight = {Colors.base09,Colors.base04},
  }
}
gls.left[9] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = '   ',
    highlight = {Colors.base08,Colors.base04},
  }
}
gls.left[10] = {
  LeftEnd = {
    provider = function() return '' end,
    separator = '',
    separator_highlight = {Colors.base04,Colors.base00},
    highlight = {Colors.base04,Colors.base04}
  }
}
gls.left[11] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {Colors.base08,Colors.base00}
  }
}
gls.left[13] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {Colors.base0A,Colors.base00},
  }
}
gls.right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    separator = '',
    separator_highlight = {Colors.base04,Colors.base00},
    highlight = {Colors.base07,Colors.base04},
  }
}
gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' | ',
    separator_highlight = {Colors.base00,Colors.base04},
    highlight = {Colors.base07,Colors.base04},
  },
}
gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = '',
    separator_highlight = {Colors.base00,Colors.base04},
    highlight = {Colors.base07,Colors.base00},
  }
}
gls.right[4] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {Colors.base09,Colors.base00},
  }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = '',
    separator_highlight = {Colors.base04,Colors.base00},
    highlight = {Colors.base07,Colors.base04}
  }
}


gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    separator = '',
    separator_highlight = {Colors.base04,Colors.base00},
    highlight = {Colors.base07,Colors.base04}
  }
}
