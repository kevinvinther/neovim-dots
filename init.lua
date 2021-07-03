----------------------------------------------------
--███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗--
--████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║--
--██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║--
--██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║--
--██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║--
--╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝--
----------------------------------------------------

-- Load colors
require('colors')

-- Use external files
require('plugins')

-- Keybindings
require('keybindings')

-- Settings
require('settings')

-- Plugin configurations
require('lsp-config')
require('plugins-compe')
require('plugins-nvimtree')
require('plugins-rusttools')
require('plugins-treesitter')
require('plugins-gitsigns')
require('plugins-telescope')
require('plugins-lspkind')
require('plugins-lspsaga')
require('plugins-bufferline')
require('plugins-galaxyline')
require('plugins-colorizer')
require('plugins-dashboard')
require('plugins-indentline')
require('plugins-lspinstall')
require('plugins-lsptrouble')
require('plugins-symbolsoutline')
require('plugins-bufferline')
require('plugins-lspsignature')
require('plugins-whichkey')
require('plugins-todocomments')
require('plugins-toggleterm')
if(not NonConfigColorscheme) then
    require('highlights')
end
