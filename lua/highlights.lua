-- NOTE: Nothing needs to be changed here.
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
change_highlight('CursorLineNR', 'fg', Colors.fg0)
vim.cmd('set cursorline')
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

change_highlight('NvimTreeNormal', 'bg', Colors.bg0_h)

change_highlight('NvimTreeStatuslineNc', 'bg', Colors.bg0_h)
change_highlight('NvimTreeStatuslineNc', 'fg', Colors.bg0_h)
change_highlight('NvimTreeEndOfBuffer', 'fg', Colors.bg0_h)

change_highlight('NvimTreeVertSplit', 'fg', Colors.bg0_h)
change_highlight('NvimTreeVertSplit', 'bg', Colors.bg0_h)

-- TODO: See which of these are actually needed
-- Bufferline
change_highlight('BufferLineFill', 'bg', Colors.bg0_h)

change_highlight('BufferLineBackground', 'bg', Colors.bg0_h)

change_highlight('BufferLineBufferVisible', 'bg', Colors.bg0_h)

change_highlight('BufferLineBufferSelected', 'bg', Colors.bg0)

change_highlight('BufferLineTab', 'bg', Colors.bg0)
change_highlight('BufferLineTabSelected', 'bg', Colors.bg0)
change_highlight('BufferLineTabClose', 'bg', Colors.bg0)

change_highlight('BufferLineIndicator', 'bg', Colors.bg0_h)

change_highlight('BufferLineSeparator', 'bg', Colors.bg0_h)
change_highlight('BufferLineSeparatorVisible', 'bg', Colors.bg0_h)
change_highlight('BufferLineSeparatorSelected', 'bg', Colors.bg0_h)

change_highlight('BufferLineModified', 'bg', Colors.bg0_h)
change_highlight('BufferLineModifiedVisible', 'bg', Colors.bg0)
change_highlight('BufferLineModifiedSelected', 'bg', Colors.bg0)

change_highlight('BufferLineCloseButtonVisible', 'bg', Colors.bg0_h)
change_highlight('BufferLineCloseButton', 'bg', Colors.bg0_h)
change_highlight('BufferLineCloseButtonSelected', 'bg', Colors.bg0)

change_highlight('BufferLineIndicatorSelected', 'fg', Colors.blue)
change_highlight('BufferLineIndicatorSelected', 'bg', Colors.bg0)



vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
      prefix = ' ',
    },
  }
)
