-- I'll find out about this later
vim.cmd('set colorcolumn=80')                   -- Column at 80 characters
vim.o.mouse = "nv"

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
vim.cmd('set tabstop=4')                        -- make tabs behave likes spaces
vim.cmd('set shiftwidth=4')
vim.cmd('set softtabstop=4')
vim.cmd('set expandtab')

vim.o.termguicolors = true

vim.cmd('let g:sonokai_style = \'default\'')
vim.cmd('let g:sonokai_enable_italic = 1')
vim.cmd('let g:sonokai_disable_italic_comment = 1')

vim.o.completeopt = "menuone,noselect"          -- For nvim-compe
vim.g.blamer_enabled = 1

vim.cmd('autocmd BufWritePre * Neoformat')      -- For Neoformat
