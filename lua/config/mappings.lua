vim.g.mapleader = " "

-- NvimTree
vim.keymap.set("n", "<leader>nn", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>nf", ":NvimTreeFocus<CR>")

--[[ BARBAR ]]
-- Move to previous/next
vim.keymap.set('n', '<A-,>', ':BufferPrevious<CR>')
vim.keymap.set('n', '<A-.>', ':BufferNext<CR>')
-- Re-order to previous/next
vim.keymap.set('n', '<A-<>', ':BufferMovePrevious<CR>')
vim.keymap.set('n', '<A->>', ':BufferMoveNext<CR>')
-- Goto buffer in position...
vim.keymap.set('n', '<A-1>', ':BufferGoto 1<CR>')
vim.keymap.set('n', '<A-2>', ':BufferGoto 2<CR>')
vim.keymap.set('n', '<A-3>', ':BufferGoto 3<CR>')
vim.keymap.set('n', '<A-4>', ':BufferGoto 4<CR>')
vim.keymap.set('n', '<A-5>', ':BufferGoto 5<CR>')
vim.keymap.set('n', '<A-6>', ':BufferGoto 6<CR>')
vim.keymap.set('n', '<A-7>', ':BufferGoto 7<CR>')
vim.keymap.set('n', '<A-8>', ':BufferGoto 8<CR>')
vim.keymap.set('n', '<A-9>', ':BufferGoto 9<CR>')
vim.keymap.set('n', '<A-0>', ':BufferLast<CR>')
-- Pin/unpin buffer
vim.keymap.set('n', '<A-p>', ':BufferPin<CR>')
-- Close buffer
vim.keymap.set('n', '<A-c>', ':BufferClose<CR>')

vim.keymap.set('n', '<leader>bb', ':BufferOrderByBufferNumber<CR>')
vim.keymap.set('n', '<leader>bd', ':BufferOrderByDirectory<CR>')
vim.keymap.set('n', '<leader>bl', ':BufferOrderByLanguage<CR>')
vim.keymap.set('n', '<leader>bw', ':BufferOrderByWindowNumber<CR>')
