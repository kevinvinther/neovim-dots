-- Available colorschemes: (case-sensitive)
    -- gruvbox
    -- sonokai
    -- tokyonight - doesn't currently support galaxyline
    -- one dark
UserColorscheme = "one dark"

Colors = {}

NonConfigColorscheme = false

vim = vim -- to surpress annoying error messages

vim.cmd([[
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
]])

if(UserColorscheme == "gruvbox")
then
    -- Gruvbox
    Colors.bg0_hh           = '#1b1a19' -- Much darker background
    Colors.bg0_h            = '#282828' -- Darker background
    Colors.bg0              = '#32302f' -- Background
    Colors.bg1              = '#3c3836' -- Light backround
    Colors.bg2              = '#3c3836' -- Light background 2
    Colors.bg3              = '#504945' -- Lighter background
    Colors.bg4              = '#504945' -- Lighter background 2
    Colors.bg5              = '#665c54' -- Lightest background
    Colors.bg_statusline1   = '#3c3836' -- Statusline, dark
    Colors.bg_statusline2   = '#46413e' -- Statusline, normal
    Colors.bg_statusline3   = '#5b534d' -- Statusline, light
    Colors.bg_diff_green    = '#3d4220'
    Colors.bg_visual_green  = '#424a3e'
    Colors.bg_diff_red      = '#472322'
    Colors.bg_visual_red    = '#543937'
    Colors.bg_diff_blue     = '#0f3a42'
    Colors.bg_visual_blue   = '#404946'
    Colors.bg_visual_yellow = '#574833'
    Colors.bg_current_word  = '#45403d'
    Colors.fg0              = '#ebdbb2'
    Colors.fg1              = '#ebdbb2'
    Colors.red              = '#fb4934'
    Colors.orange           = '#fe8019'
    Colors.yellow           = '#fabd2f'
    Colors.green            = '#b8bb26'
    Colors.aqua             = '#8ec07c'
    Colors.blue             = '#83a598'
    Colors.purple           = '#d3869b'
    Colors.bg_red           = '#cc241d'
    Colors.bg_green         = '#b8bb26'
    Colors.bg_yellow        = '#fabd2f'
    Colors.grey0            = '#7c6f64'
    Colors.grey1            = '#928374'
    Colors.grey2            = '#a89984'

    vim.g.gruvbox_material_palette = 'original'
    vim.g.gruvbox_material_background = 'soft'
    vim.g.gruvbox_material_show_eob = 0
    vim.g.gruvbox_material_diagnostic_text_highlight = 1
    vim.g.gruvbox_material_diagnostic_line_highlight = 1
    vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
    vim.o.background = 'dark'

    vim.cmd([[colorscheme gruvbox-material]])
elseif (UserColorscheme == "sonokai") then
    -- Sonokai
    Colors.bg0_hh           = '#151618' -- Much darker background
    Colors.bg0_h            = '#202326' -- Darker background
    Colors.bg0              = '#2c2e34' -- Background
    Colors.bg1              = '#414550' -- Light backround
    Colors.bg2              = '#414550' -- Light background 2
    Colors.bg3              = '#7f8490' -- Lighter background
    Colors.bg4              = '#7f8490' -- Lighter background 2
    Colors.bg5              = '#8d919c' -- Lightest background
    Colors.bg_statusline1   = '#2a2d34' -- Statusline, dark
    Colors.bg_statusline2   = '#414550' -- Statusline, normal
    Colors.bg_statusline3   = '#585d6c' -- Statusline, light
    Colors.bg_diff_green    = '#9ed072'
    Colors.bg_visual_green  = '#8ec07c'
    Colors.bg_diff_red      = '#fc5d7c'
    Colors.bg_visual_red    = '#fb2b54'
    Colors.bg_diff_blue     = '#2ca8c4'
    Colors.bg_visual_blue   = '#37b6d2'
    Colors.bg_visual_yellow = '#e4be4e'
    Colors.bg_current_word  = '#4d4e55'
    Colors.fg0              = '#e2e2e3'
    Colors.fg1              = '#e2e2e3'
    Colors.red              = '#fc5d7c'
    Colors.orange           = '#d65d0e'
    Colors.yellow           = '#e7c664'
    Colors.green            = '#9ed072'
    Colors.aqua             = '#9ed072'
    Colors.blue             = '#76cce0'
    Colors.purple           = '#b39df3'
    Colors.bg_red           = '#fc5d7c'
    Colors.bg_green         = '#8ec07c'
    Colors.bg_yellow        = '#e7c664'
    Colors.grey0            = '#35363b'
    Colors.grey1            = '#414248'
    Colors.grey2            = '#4d4e55'

    vim.g.sonokai_style = 'default'
    vim.g.sonokai_enable_italic = 0
    vim.g.sonokai_disable_italic_comment = 1
    vim.g.sonokai_diagnostic_text_highlight = 1
    vim.g.sonokai_diagnostic_line_highlight = 1
    vim.g.sonokai_diagnostic_virtual_text = 'colored'

    vim.cmd([[colorscheme sonokai]])
elseif(UserColorscheme == "tokyonight") then
    NonConfigColorscheme = true
    vim.cmd([[colorscheme tokyonight]])
elseif(UserColorscheme == "one dark") then
    Colors.bg0_hh           = '#121417' -- Much darker background
    Colors.bg0_h            = '#1d2026' -- Darker background
    Colors.bg0              = '#282c34' -- Background
    Colors.bg1              = '#333842' -- Light backround
    Colors.bg2              = '#414550' -- Light background 2
    Colors.bg3              = '#3e4451' -- Lighter background
    Colors.bg4              = '#3e4451' -- Lighter background 2
    Colors.bg5              = '#49515f' -- Lightest background
    Colors.bg_statusline1   = '#353a46' -- Statusline, dark
    Colors.bg_statusline2   = '#4b5263' -- Statusline, normal
    Colors.bg_statusline3   = '#616a80' -- Statusline, light
    Colors.bg_diff_green    = '#98c379'
    Colors.bg_visual_green  = '#7db356'
    Colors.bg_diff_red      = '#E06C75'
    Colors.bg_visual_red    = '#dc5761'
    Colors.bg_diff_blue     = '#3398ea'
    Colors.bg_visual_blue   = '#8fc6f4'
    Colors.bg_visual_yellow = '#e5c07b'
    Colors.bg_current_word  = '#333842'
    Colors.fg0              = '#ABB2BF'
    Colors.fg1              = '#ABB2BF'
    Colors.red              = '#fc5d7c'
    Colors.orange           = '#d19a66'
    Colors.yellow           = '#e5c07b'
    Colors.green            = '#98c379'
    Colors.aqua             = '#98c379'
    Colors.blue             = '#61afef'
    Colors.purple           = '#c678dd'
    Colors.bg_red           = '#fc5d7c'
    Colors.bg_green         = '#98c379'
    Colors.bg_yellow        = '#98c379'
    Colors.grey0            = '#5c6370'
    Colors.grey1            = '#4b5263'
    Colors.grey2            = '#353a46'

    vim.cmd([[colorscheme onedark]])
end

-- Template:
    -- Colors.bg0_hh           = '#FFFFFF' -- Much darker background
    -- Colors.bg0_h            = '#FFFFFF' -- Darker background
    -- Colors.bg0              = '#FFFFFF' -- Background
    -- Colors.bg1              = '#FFFFFF' -- Light backround
    -- Colors.bg2              = '#FFFFFF' -- Light background 2
    -- Colors.bg3              = '#FFFFFF' -- Lighter background
    -- Colors.bg4              = '#FFFFFF' -- Lighter background 2
    -- Colors.bg5              = '#FFFFFF' -- Lightest background
    -- Colors.bg_statusline1   = '#FFFFFF' -- Statusline, dark
    -- Colors.bg_statusline2   = '#FFFFFF' -- Statusline, normal
    -- Colors.bg_statusline3   = '#FFFFFF' -- Statusline, light
    -- Colors.bg_diff_green    = '#FFFFFF'
    -- Colors.bg_visual_green  = '#FFFFFF'
    -- Colors.bg_diff_red      = '#FFFFFF'
    -- Colors.bg_visual_red    = '#FFFFFF'
    -- Colors.bg_diff_blue     = '#FFFFFF'
    -- Colors.bg_visual_blue   = '#FFFFFF'
    -- Colors.bg_visual_yellow = '#FFFFFF'
    -- Colors.bg_current_word  = '#FFFFFF'
    -- Colors.fg0              = '#FFFFFF'
    -- Colors.fg1              = '#FFFFFF'
    -- Colors.red              = '#FFFFFF'
    -- Colors.orange           = '#FFFFFF'
    -- Colors.yellow           = '#FFFFFF'
    -- Colors.green            = '#FFFFFF'
    -- Colors.aqua             = '#FFFFFF'
    -- Colors.blue             = '#FFFFFF'
    -- Colors.purple           = '#FFFFFF'
    -- Colors.bg_red           = '#FFFFFF'
    -- Colors.bg_green         = '#FFFFFF'
    -- Colors.bg_yellow        = '#FFFFFF'
    -- Colors.grey0            = '#FFFFFF'
    -- Colors.grey1            = '#FFFFFF'
    -- Colors.grey2            = '#FFFFFF'
