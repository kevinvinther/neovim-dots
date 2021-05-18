vim.cmd('hi clear SignColumn')
vim.cmd('hi clear CursorLine')
vim.cmd('hi clear CursorLineNR')
vim.cmd('hi VertSplit guifg=#414550')
vim.cmd('set signcolumn=yes')

-- For gitsigns
vim.cmd('hi GitSignsChange guifg=#76cce0 guibg=#2c2e34')
vim.cmd('hi GitSignsDelete  guifg=#fc5d7c guibg=#2c2e34')
vim.cmd('hi GitSignsAdd guifg=#9ed072 guibg=#2c2e34')

-- For lsp_saga
vim.cmd('hi LspDiagnosticsSignWarning guibg=clear guifg=#e7c664')
vim.cmd('hi LspDiagnosticsSignError guibg=clear guifg=#fc5d7c')
vim.cmd('hi LspDiagnosticsSignInformation guibg=clear guifg=#76cce0')
vim.cmd('hi LspDiagnosticsSignHint guibg=clear guifg=#fefefe')

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
      prefix = ' ',
    },
  }
)
