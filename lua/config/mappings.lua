vim.g.mapleader = " "

-- Tab/Shift+tab to indent/dedent
vim.keymap.set("n", "<Tab>", ">>")
vim.keymap.set("n", "<S-Tab>", "<<")
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")
vim.keymap.set("x", "<leader>p", "\"_dP")

-- dismiss highlight
vim.keymap.set("n", "<ESC>", "<CMD>noh<CR>")
