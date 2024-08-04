local path = vim.fn.stdpath("data") .. package.config:sub(1, 1) .. "auto21_hh_cache"

return {
  read = function ()
    local exists, lines = pcall(vim.fn.readfile, path)
    vim.g.auto21_hh_enabled = exists and #lines > 0 and vim.trim(lines[1]) == "true"
  end,
  write = function()
    vim.fn.writefile({tostring(vim.g.auto21_hh_enabled)}, path)
  end
}
