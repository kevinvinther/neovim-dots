local coq = require "coq" -- add this
require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
    require'lspconfig'[server].setup{
        coq.lsp_ensure_capabilities()
    }
end

-- BUG: none will work
-- vim.cmd('let g:coq_settings = { \'auto_start\': v:true }')
-- vim.g.coq_settings.auto_start = true
-- vim.g.coq_settings = { auto_start = "shut-up" }
-- print(vim.inspect(vim.g.coq_settings))

-- TODO: fix
vim.cmd(':COQnow --shut-up')    -- Temporary solution
