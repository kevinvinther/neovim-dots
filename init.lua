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

-- Settings
require('settings')

-- Plugin configurations
require('lsp-config')
require('plugins-nvimtree')
require('plugins-treesitter')
require('plugins-gitsigns')
require('plugins-telescope')
require('plugins-lspkind')
require('plugins-lspsaga')
require('plugins-bufferline')
require('plugins-colorizer')
require('plugins-dashboard')
-- require('plugins-alphanvim') --Currently non-functional
require('plugins-indentline')
require('plugins-lsptrouble')
require('plugins-symbolsoutline')
require('plugins-bufferline')
require('plugins-lspsignature')
-- require('plugins-whichkey')
require('plugins-todocomments')
require('plugins-toggleterm')
require('plugins-nvimtsautotag')
-- require('plugins-feline')
require('plugins-lualine')
require('plugins-nvimlspinstall')
require('plugins-nvimtsrainbow')
require('colorscheme')
-- require('statusline')
if (not NonConfigColorscheme) then
    require('highlights')
end

-- Keybindings:
require('keybindings')
