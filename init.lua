----------------------------------------------------
--███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗--
--████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║--
--██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║--
--██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║--
--██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║--
--╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝--
----------------------------------------------------

-- Use external files
require('plugins')

-- Load colors
require('colors')

-- Keybindings
require('keybindings')

-- Settings
require('settings')

-- Plugin configurations
require('lsp-config')
require('plugins-nvimtree')
require('plugins-rusttools')
require('plugins-treesitter')
require('plugins-gitsigns')
require('plugins-telescope')
require('plugins-lspkind')
require('plugins-lspsaga')
require('plugins-bufferline')
require('plugins-colorizer')

require('plugins-dashboard')
-- require('plugins-alphanvim') Currently non-functional

require('plugins-indentline')
require('plugins-lsptrouble')
require('plugins-symbolsoutline')
require('plugins-bufferline')
require('plugins-lspsignature')
require('plugins-whichkey')
require('plugins-todocomments')
require('plugins-toggleterm')
require('colorscheme')
require('plugins-lualine')
if(not NonConfigColorscheme) then
    require('highlights')
end
