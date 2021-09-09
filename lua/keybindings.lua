-- Set mapleader
vim.api.nvim_set_keymap('n', ',', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ','

-- Toggle search highlighting
vim.api.nvim_set_keymap('n', '<C-o>', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- File explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Movement between windows
vim.api.nvim_set_keymap('n', '<Leader>h', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>j', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>k', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>l', '<C-w>l', { silent = true })

-- Open terminal
vim.api.nvim_set_keymap('n', '<Leader>t', ':ToggleTerm<CR>', { silent = true })

-- Switch buffer with Ctrl + h, l
vim.api.nvim_set_keymap('n', '<C-h>', ':bp<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', ':bn<CR>', { noremap = true, silent = true})

-- Move selected line up or down
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true})

-- Sets undotree to <leader>u
vim.api.nvim_set_keymap('n', '<Leader>u', ':UndotreeToggle<CR>', { noremap = true, silent = true})


-- Sets telescope keybindings
vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fv', '<cmd>Telescope treesitter<CR>', { noremap = true, silent = true})

-- Sets lsp-saga keybindings
vim.api.nvim_set_keymap('n', '<Leader>gh', ':Lspsaga lsp_finder<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ca', ':Lspsaga code_action<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>gr', ':Lspsaga rename<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>K', ':Lspsaga hover_doc<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>gd', ':Lspsaga preview_definition<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>gD', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>cd', ':Lspsaga show_line_diagnostics<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'æ', ':Lspsaga diagnostic_jump_next<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'ø', ':Lspsaga diagnostic_jump_prev<CR>', { noremap = true, silent = true})

-- Sets lsp-trouble keybindings
vim.api.nvim_set_keymap('n', '<Leader>m', ':LspTroubleToggle<CR>', { noremap = true, silent = true})

-- Set symbols outline toggle
vim.api.nvim_set_keymap('n', '<Leader>n', ':SymbolsOutline<CR>', { noremap = true, silent = true})
