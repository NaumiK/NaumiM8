vim.g.mapleader = " "

-- Tab/Shift+tab to indent/dedent
vim.keymap.set("n", "<Tab>", ">>")
vim.keymap.set("n", "<S-Tab>", "<<")
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

-- dismiss highlight
vim.keymap.set("n", "<ESC>", "<CMD>noh<CR>")
-- escape terminal mode
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")
