local function change_highlight(highlight, fg_or_bg, color)
    if color == nil then
        print('A color that doesn\'t exist is being used in your highlights file')
    else
        if fg_or_bg == 'fg' then
            vim.cmd('hi ' .. highlight .. ' guifg=' .. color)
        else
            vim.cmd('hi ' .. highlight .. ' guibg=' .. color)
        end
    end
end


vim.cmd('hi clear SignColumn')
vim.cmd('hi clear CursorLine')
vim.cmd('hi clear CursorLineNR')
vim.cmd('hi VertSplit guifg=' .. Colors.grey0)
vim.cmd('set signcolumn=yes')
vim.cmd('hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg')

-- For gitsigns
change_highlight('GitSignsChange', 'fg', Colors.blue)
change_highlight('GitSignsChange', 'bg', Colors.bg0)
change_highlight('GitSignsDelete', 'fg', Colors.red)
change_highlight('GitSignsDelete', 'bg', Colors.bg0)
change_highlight('GitSignsAdd', 'fg', Colors.green)
change_highlight('GitSignsAdd', 'bg', Colors.bg0)

-- For lsp_saga
change_highlight('LspDiagnosticsSignWarning', 'fg', Colors.yellow)
change_highlight('LspDiagnosticsSignWarning', 'bg', 'clear')

change_highlight('LspDiagnosticsSignError', 'fg', Colors.red)
change_highlight('LspDiagnosticsSignError', 'bg', 'clear')

change_highlight('LspDiagnosticsSignInformation', 'fg', Colors.blue)
change_highlight('LspDiagnosticsSignInformation', 'bg', 'clear')

change_highlight('LspDiagnosticsSignHint', 'fg', Colors.blue)
change_highlight('LspDiagnosticsSignHint', 'bg', 'clear')

-- Diagnostics
change_highlight('DiagnosticError', 'fg', Colors.yellow)
change_highlight('DiagnosticError', 'bg', 'clear')

change_highlight('DiagnosticWarning', 'fg', Colors.red)
change_highlight('DiagnosticWarning', 'bg', 'clear')

change_highlight('DiagnosticInformation', 'fg', Colors.blue)
change_highlight('DiagnosticInformation', 'bg', 'clear')

change_highlight('DiagnosticHint', 'fg', Colors.blue)
change_highlight('DiagnosticHint', 'bg', 'clear')

-- Nvimtree
change_highlight('NvimTreeRootFolder', 'fg', Colors.fg0)

change_highlight('NvimTreeIndentMarker', 'fg', Colors.bg1)

change_highlight('NvimTreeFolderIcon', 'fg', Colors.blue)

change_highlight('NvimTreeGitDirty', 'fg', Colors.blue)

change_highlight('NvimTreeGitNew', 'fg', Colors.blue)

change_highlight('NvimTreeGitDeleted', 'fg', Colors.red)

change_highlight('NvimTreeSpecialFile', 'fg', Colors.purple)

change_highlight('NvimTreeImageFile', 'fg', Colors.fg0)

change_highlight('NvimTreeNormal', 'fg', Colors.fg0)
change_highlight('NvimTreeNormal', 'bg', Colors.bg0_h)

change_highlight('NvimTreeVertSplit', 'fg', Colors.bg0_h)
change_highlight('NvimTreeVertSplit', 'bg', Colors.bg0_h)

-- Misc

-- change_highlight('LspTroubleNormal', 'bg', Colors.bg0_h)

-- change_highlight('WhichKeyFloat', 'bg', Colors.bg0_h)

-- change_highlight('SignColumnSB', 'bg', Colors.bg0_h)
-- change_highlight('NormalSB', 'bg', Colors.bg0_h)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
      prefix = ' ',
    },
  }
)
