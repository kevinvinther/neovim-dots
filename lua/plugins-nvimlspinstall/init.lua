-- -- local coq = require "coq"

-- local lsp_installer = require("nvim-lsp-installer")

-- -- Register a handler that will be called for all installed servers.
-- -- Alternatively, you may also register handlers on specific server instances instead (see example below).
-- lsp_installer.on_server_ready(function(server)
--     local opts = {}

--     -- (optional) Customize the options passed to the server
--     -- if server.name == "tsserver" then
--     --     opts.root_dir = function() ... end
--     -- end
--     if server.name == "rust_analyzer" then 
-- 	    require('rust-tools').setup()
--     end

--     -- This setup() function is exactly the same as lspconfig's setup function.
--     -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/ADVANCED_README.md
--     server:setup(opts)
-- end)

-- -- TODO: fix
-- -- vim.cmd(':COQnow --shut-up')    -- Temporary solution
local lsp_installer = require("nvim-lsp-installer")
local lsp_installer_servers = require("nvim-lsp-installer/servers")

local server_available, requested_server = lsp_installer_servers.get_server("rust_analyzer")

if server_available then
    local opts = {
        tools = {
            autoSetHints = true,
            hover_with_actions = false,
            inlay_hints = {
                show_parameter_hints = true,
                parameter_hints_prefix = "",
                other_hints_prefix = "",
            },
        },
        server = {
            cmd = requested_server._default_options.cmd,
            settings = {
                ["rust-analyzer"] = {
                    completion = {
                        postfix = {
                            enable = false
                        }
                    },
                    checkOnSave = {
                        command = "clippy"
                    },
                }
            }
        },
    }
    require("rust-tools").setup(opts)
end

lsp_installer.on_server_ready(function(server)
    local opts = {}

    if server.name == "rust_analyzer" then
        return
    end

    server:setup(opts)
end)
