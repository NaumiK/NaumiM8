local M = {}
local cache = require("scripts.auto21_hh.cache")

function M.toggle(enabled)
  vim.g.auto21_hh_enabled = (enabled == nil and not vim.g.auto21_hh_enabled or enabled)
  cache.write()
end

function M.print_hh()
  if vim.g.auto21_hh_enabled then
    require("42header.utils.header").stdheader()
  end
end

function M.enable()
  M.toggle(true)
end

function M.disable()
  M.toggle(false)
end

function M.setup(_)
  if vim.g.auto21_hh_enabled == nil then
    cache.read()
  end

  vim.api.nvim_create_user_command("Auto21Toggle", M.toggle, {})
  vim.api.nvim_create_user_command("Auto21Enable", M.enable, {})
  vim.api.nvim_create_user_command("Auto21Disable", M.disable, {})
  vim.api.nvim_create_user_command("Auto21IsEnabled", function ()
    print("Auto 21 school header is " .. (vim.g.auto21_hh_enabled and "Enabled" or "Disabled"))
    end, {})

  vim.api.nvim_create_augroup("School21", {clear = true})

  vim.api.nvim_create_autocmd("BufWrite", {
    group = "School21",
    pattern = "*",
    callback = function()
      M.print_hh()
    end
  })
end

return M
