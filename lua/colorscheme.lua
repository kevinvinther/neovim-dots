colorscheme = {}

colorscheme.normal = {
  a = { bg = Colors.blue, fg = Colors.bg0_hh },
  b = { bg = Colors.fg0, fg = Colors.bg0 },
  c = { bg = Colors.bg0, fg = Colors.fg_sidebar },
}

colorscheme.insert = {
  a = { bg = Colors.green, fg = Colors.bg0_hh },
  b = { bg = Colors.fg0, fg = Colors.bg0 },
}

colorscheme.command = {
  a = { bg = Colors.yellow, fg = Colors.bg0_hh },
  b = { bg = Colors.fg0, fg = Colors.bg0 },
}

colorscheme.visual = {
  a = { bg = Colors.purple, fg = Colors.bg0_hh },
  b = { bg = Colors.fg0, fg = Colors.bg0 },
}

colorscheme.replace = {
  a = { bg = Colors.red, fg = Colors.bg0_hh },
  b = { bg = Colors.fg0, fg = Colors.bg0 },
}

colorscheme.inactive = {
  a = { bg = Colors.bg_statusline2, fg = Colors.fg0 },
  b = { bg = Colors.bg_statusline2, fg = Colors.fg0, gui = "bold" },
  c = { bg = Colors.bg_statusline2, fg = Colors.fg0 },
}


if vim.g.colorscheme_lualine_bold then
  for _, mode in pairs(colorscheme) do
    mode.a.gui = "bold"
  end
end

return colorscheme
