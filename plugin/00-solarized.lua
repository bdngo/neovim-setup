vim.pack.add({
    "https://github.com/maxmx03/solarized.nvim",
})
vim.o.termguicolors = true
require("solarized").setup()
vim.cmd.colorscheme "solarized"
vim.o.background = nil
