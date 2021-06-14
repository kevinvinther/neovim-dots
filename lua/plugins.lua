local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'sainnhe/sonokai'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'rust-lang/rust.vim'
    use 'simrat39/rust-tools.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'akinsho/nvim-bufferline.lua'
    use { 'glepnir/galaxyline.nvim', branch = 'main' }
    use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'sbdchd/neoformat'
    use 'tpope/vim-commentary'
    use 'andweeb/presence.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'APZelos/blamer.nvim'
    use 'jiangmiao/auto-pairs'
    use 'mbbill/undotree'
    use 'norcalli/nvim-colorizer.lua'
    use 'glepnir/dashboard-nvim'
    use 'akinsho/nvim-toggleterm.lua'
    use 'kabouzeid/nvim-lspinstall'
    use 'folke/lsp-trouble.nvim'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'simrat39/symbols-outline.nvim'
    use "ray-x/lsp_signature.nvim"
    use "folke/which-key.nvim"
    use 'joshdick/onedark.vim'
    use 'folke/todo-comments.nvim'
end)
