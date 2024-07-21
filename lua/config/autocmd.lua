vim.api.nvim_create_augroup("UI_cmd", { clear = true})

vim.api.nvim_create_autocmd("TermOpen", {
  group = "UI_cmd",
  pattern = "*",
  command = "startinsert | set winfixheight"
})

vim.api.nvim_create_autocmd("TextYankPost", {
  group = "UI_cmd",
  pattern = "*",
  callback = function ()
    vim.highlight.on_yank {timeout = 200}
  end
})

