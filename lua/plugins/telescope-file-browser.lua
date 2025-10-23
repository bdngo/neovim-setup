return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },

    keys = {
        { -- lazy style key map
            "<leader>fb",
            "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
            desc = "file browser",
        },
    },
    config = function(_, opts)
        -- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
        -- configs for us. We won't use data, as everything is in it's own namespace (telescope
        -- defaults, as well as each extension).
        require("telescope").setup(opts)
        require("telescope").load_extension("undo")
    end,
}
