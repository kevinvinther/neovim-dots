cmd = vim.cmd

cmd('hi clear SignColumn')
cmd('hi clear CursorLine')
cmd('hi clear CursorLineNR')
cmd('hi VertSplit guifg=' .. Colors.base01)
cmd('set signcolumn=yes')
cmd('hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg')

-- For gitsigns
cmd('hi GitSignsChange guifg=' .. Colors.base0D .. ' guibg=' .. Colors.base00)
cmd('hi GitSignsDelete guifg=' .. Colors.base08 .. 'guibg=' .. Colors.base00)
cmd('hi GitSignsAdd guifg=' .. Colors.base0B .. ' guibg=' .. Colors.base00)

-- For lsp_saga
cmd('hi LspDiagnosticsSignWarning guibg=clear guifg=' .. Colors.base0A )
cmd('hi LspDiagnosticsSignError guibg=clear guifg=' .. Colors.base08)
cmd('hi LspDiagnosticsSignInformation guibg=clear guifg=' .. Colors.base0D)
cmd('hi LspDiagnosticsSignHint guibg=clear guifg=' .. Colors.base0D)

cmd('hi DiagnosticError guibg=clear guifg=' .. Colors.base0A )
cmd('hi DiagnosticWarning guibg=clear guifg=' .. Colors.base08)
cmd('hi DiagnosticInformation guibg=clear guifg=' .. Colors.base0D)
cmd('hi DiagnosticHint guibg=clear guifg=' .. Colors.base0D)

-- Nvimtree
cmd('hi NvimTreeRootFolder guifg=' .. Colors.base00)
cmd('hi NvimTreeIndentMarker guifg=' .. Colors.base01)

cmd('hi NvimTreeFolderIcon guifg=' .. Colors.base0D)

=======
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
