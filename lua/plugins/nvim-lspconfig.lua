return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

        require('mason').setup()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup {
            capabilities = capabilities,
        }
        lspconfig.rust_analyzer.setup {
            capabilities = capabilities,
            init_options = {
                settings = {
                    ["target-version"] = "py39"
                }
            }
        }
        lspconfig.ruff.setup {
            capabilities = capabilities,
        }
        lspconfig.pylsp.setup {
            capabilities = capabilities,
        }
    end,
}
