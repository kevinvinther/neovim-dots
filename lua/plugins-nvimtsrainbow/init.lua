require("nvim-treesitter.configs").setup {
  highlight = {
      -- ...
  },
  -- ...
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = { Colors.red, 
    	Colors.orange, 
	Colors.yellow, 
	Colors.green, 
	Colors.aqua, 
	Colors.blue, 
	Colors.purple}
    -- termcolors = {} -- table of colour name strings
  }
}
