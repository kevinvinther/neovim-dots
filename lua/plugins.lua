local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

use = use -- To remove the annoying LSP warnings

return require('packer').startup(function()
    -- Package Manager
    use 'wbthomason/packer.nvim'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Tree view
    use 'kyazdani42/nvim-tree.lua'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use "ray-x/lsp_signature.nvim"
    use 'folke/lsp-trouble.nvim'

    -- Completion
    use 'hrsh7th/nvim-compe'

    -- Git
    use 'lewis6991/gitsigns.nvim'
    use 'APZelos/blamer.nvim'
    use 'sindrets/diffview.nvim'

    -- Programming language specific
    use 'rust-lang/rust.vim'
    use 'simrat39/rust-tools.nvim'

    -- Highlighting
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Buffers
    use 'akinsho/nvim-bufferline.lua'

    -- Other visual
    use {"lukas-reineke/indent-blankline.nvim"}
    use 'norcalli/nvim-colorizer.lua'
    use 'folke/todo-comments.nvim'

    -- Other
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'tpope/vim-commentary'
    use 'andweeb/presence.nvim'
    use 'jiangmiao/auto-pairs'
    use 'mbbill/undotree'
    use 'glepnir/dashboard-nvim'
    use 'akinsho/nvim-toggleterm.lua'
    use 'kabouzeid/nvim-lspinstall'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'simrat39/symbols-outline.nvim'
    use "folke/which-key.nvim"

    -- Colorschemes
    use 'sainnhe/sonokai'
    use 'folke/tokyonight.nvim'
    use "sainnhe/gruvbox-material"
    use "joshdick/onedark.vim"

    -- Statusline
    use 'hoob3rt/lualine.nvim'
end)
