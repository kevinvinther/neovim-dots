require"toggleterm".setup{
    size = 10,
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = '3',
    start_in_insert = true,
    persist_size = true,
    direction =  'horizontal',
    horizontal_ops = {
        highlights = {
          border = Colors.bg0_h,
          background = Colors.bg0_h,
        }
    }
}
vim.cmd('hi OutlineNormal guibg=' .. Colors.bg0_h)
