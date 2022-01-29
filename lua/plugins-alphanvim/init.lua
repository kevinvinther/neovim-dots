local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

function file_exists(file)
  local f = io.open(file, "rb")
  if f then f:close() end
  return f ~= nil
end

-- get all lines from a file, returns an empty 
-- list/table if the file does not exist
function lines_from(file)
  if not file_exists(file) then return {} end
  lines = {}
  for line in io.lines(file) do 
    lines[#lines + 1] = line
  end
  return lines
end

-- tests the functions above
local file = 'motd.txt'
local lines = lines_from(file)

math.randomseed(os.time())




dashboard.section.header.val = lines[math.random(#lines)]
dashboard.section.buttons.val = {
    dashboard.button( "n", "  New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "ff", "  Find Files", ":Telescope find_files <CR>" ),
    dashboard.button( "edit", "  Edit init.lua", ":e $MYVIMRC <CR>" ),
    dashboard.button( "fe", "  Recent Files", ":Telescope oldfiles <CR>" ),
    dashboard.button("cc", "  Colorschemes", ":e lua/colors/init.lua <CR>"),
    dashboard.button("e", "  File Browser", ":NvimTreeToggle <CR>"),
    dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
}
local handle = io.popen('fortune')
local fortune = handle:read("*a")
handle:close()
dashboard.section.footer.val = fortune
alpha.setup(dashboard.opts)
