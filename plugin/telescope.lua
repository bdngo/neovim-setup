vim.pack.add({
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/nvim-telescope/telescope-file-browser.nvim",
})
require("telescope").setup()

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find [f]iles" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live [g]rep" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope [h]elp tags" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
    { desc = "Telescope file [b]rowser" })
