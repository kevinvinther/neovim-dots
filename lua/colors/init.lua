-- Sonokai
Colors = {}

Colors.base00 = '#2c2e34'       -- Default Background
Colors.base01 = '#414550'       -- Lighter Background (Used for status bars, line number and folding marks)
Colors.base02 = '#363a44'       -- Selection Background
Colors.base03 = '#7f8490'       -- Comments, Invisibles, Line Highlighting
Colors.base04 = '#2f3339'       -- Dark Foreground (Used for status bars)
Colors.base05 = '#e2e2e3'       -- Default Foreground, Caret, Delimiters, Operators
Colors.base06 = '#e2e2e3'       -- Light Foreground (Not often used)
Colors.base07 = '#e2e2e3'       -- Light Background (Not often used)
Colors.base08 = '#fc5d7c'       -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
Colors.base09 = '#f39660'       -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
Colors.base0A = '#e7c664'       -- Classes, Markup Bold, Search Text Background
Colors.base0B = '#9ed072'       -- Strings, Inherited Class, Markup Code, Diff Inserted
Colors.base0C = '#8ec07c'       -- Support, Regular Expressions, Escape Characters, Markup Quotes
Colors.base0D = '#76cce0'       -- Functions, Methods, Attribute IDs, Headings
Colors.base0E = '#55393d'       -- Keywords, Storage, Selector, Markup Italic, Diff Changed
Colors.base0F = '#d65d0e'       -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>

-- colors:
--   primary:
--     background: "#2c2e34"
--     foreground: "#e2e2e3"

--   normal:
--     black: "#181819"
--     red: "#fc5d7c"
--     green: "#9ed072"
--     yellow: "#e7c664"
--     blue: "#76cce0"
--     magenta: "#b39df3"
--     cyan: "#f39660"
--     white: "#e2e2e3"

--   bright:
--     black: "#181819"
--     red: "#fc5d7c"
--     green: "#9ed072"
--     yellow: "#e7c664"
--     blue: "#76cce0"
--     magenta: "#b39df3"
--     cyan: "#f39660"
--     white: "#e2e2e3"



-- Theme setup
vim.g.sonokai_style = 'default'
vim.g.sonokai_enable_italic = 0
vim.g.sonokai_disable_italic_comment = 1
vim.g.sonokai_diagnostic_text_highlight = 1
--vim.g.sonokai_diagnostic_line_highlight = 1
vim.g.sonokai_diagnostic_virtual_text = 'colored'
vim.cmd('colorscheme sonokai')
