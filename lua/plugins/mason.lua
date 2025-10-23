return {
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        },
        ensure_installed = {
            "lua_ls",
            "rust_analyzer",
            "ruff",
            "pylsp",
        },
    },
    dependencies = {
        { "mason-org/mason-lspconfig.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    }
}
