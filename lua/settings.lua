-- TODO: This breaks the highlights, will have ot be changed.
-- vim.o.mouse = "nv"                      -- Make mouse usable in normal and visual mode
-- vim.o.hidden = true                     -- Enable background buffers
-- vim.o.wrap = false                      -- Disable line wrap
-- vim.o.ignorecase = true                 -- Ignore case in search
-- vim.o.smartcase = true                  -- .. Except if you use capitals
-- vim.o.tabstop = 4                       -- Number of spaces for a tab
-- vim.o.termguicolors = true              -- True colors
-- vim.o.number = true                     -- Show line numbers
-- vim.o.relativenumber = true             -- Show relative line numbers
-- vim.o.expandtab = true                  -- Uses spaces instead of tabs
-- vim.o.splitright = true                 -- Split to the right rather than bottom
-- vim.o.completeopt = "menuone,noselect"  -- For nvim-compe
-- vim.g.blamer_enabled = 1                -- git blamer

-- I'll find out about this later
--vim.cmd('set colorcolumn=80')                   -- Column at 80 characters
vim.o.mouse = "nv"
-- vim.cmd('set laststatus=3')

local options = {
	    laststatus = 3,
    }

for key, value in pairs(options) do
    vim.opt[key] = value
end

vim.cmd('syntax on ')                           -- Syntax highlighting

vim.o.hidden = true

vim.cmd('set number relativenumber')

vim.cmd('set noerrorbells')                     -- No annoying error sounds
vim.cmd('set smartindent')                      -- Something with indentation
vim.cmd('set nowrap')                           -- Text doesn't wrap
vim.o.ignorecase = true
vim.o.smartcase = true

vim.cmd('set noswapfile')                       -- No swap file
vim.cmd('set nobackup')                         -- No backup
vim.cmd('set undodir=~/.config/nvim/undodir')   -- Sets undo directory
vim.cmd('set undofile')                         -- guess it just enables
vim.cmd('set incsearch')                        -- ?
vim.o.incsearch = true
-- vim.cmd('set tabstop=4')                        -- make tabs behave likes spaces
-- vim.cmd('set shiftwidth=4')
-- vim.cmd('set softtabstop=4')
-- vim.cmd('set expandtab')

vim.o.termguicolors = true

vim.cmd('let g:sonokai_style = \'default\'')
vim.cmd('let g:sonokai_enable_italic = 1')
vim.cmd('let g:sonokai_disable_italic_comment = 1')

vim.o.completeopt = "menuone,noselect"          -- For nvim-compe
vim.g.blamer_enabled = 1

vim.cmd('autocmd BufWritePre * lua vim.lsp.buf.formatting()')      -- For formatting
