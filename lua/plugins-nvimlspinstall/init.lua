local lsp_installer = require("nvim-lsp-installer")
local coq = require "coq"

lsp_installer.on_server_ready(function(server)
    local opts = {coq.lsp_ensure_capabilites()}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)

-- TODO: fix
vim.cmd(':COQnow --shut-up')    -- Temporary solution
