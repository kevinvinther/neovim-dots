require('bufferline').setup{
    options = {
        numbers = "none",
        number_style = "none",
        mappings = true,
        -- NOTE: this plugin is designed with this icon in mind,
        -- and so changing this is NOT recommended, this is intended
        -- as an escape hatch for people who cannot bear it for whatever reason
        indicator_icon = '▎',
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 15,
        max_prefix_length = 14, -- prefix used when a buffer is de-duplicated
        tab_size = 18,
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict)
          return "("..count..")"
        end,
        show_buffer_icons = true, -- disable filetype icons for buffers
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        separator_style = "thick",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'extension'
    },
    highlights = {
        fill = {
            guibg = Colors.base04,
        },
        separator_selected = {
            guifg = Colors.base00,
            guibg = Colors.base00,
        },
        separator_visible = {
            guifg = Colors.base00,
            guibg = Colors.base00,
        },
        separator = {
            guifg = Colors.base00,
            guibg = Colors.base00,
        },
        indicator_selected = {
            guifg = Colors.base00,
        },
        tab_close = {
            guifg = Colors.base08,
            guibg = Colors.base00
        },
    }
}