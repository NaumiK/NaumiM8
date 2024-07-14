return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim'
  },
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
⠀⠀⠀⣤⣤⣤⣤⠀⠀⣤⠛⣤⠀⣤⣤⣤⣤⠀⠀⠀
  ⠀⠛⣤⠀⠀⠀⠀⣿⣤⠀⠀⠀⠀⣤⠛⠀
  ⠀⠀⠀⣿⠀⠀⣿⠛⣤⣿⠀⠀⣿⠀⠀⠀
  ⠀⣤⠛⠀⠀⠀⠀⠛⣿⠀⠀⠀⠀⠛⣤⠀
⠀⠀⠀⠛⠛⠛⠛⠀⠛⣤⠛⠀⠀⠛⠛⠛⠛⠀⠀⠀
      ]]
    dashboard.section.header.val = vim.split(logo, "\n")
    dashboard.section.buttons.val = {
      dashboard.button("f", "  " .. "Find file", "<CMD> Telescope find_files<CR>"),
      dashboard.button("r", "  " .. "Recent files", "<CMD>Telescope frecency<CR>"),
      dashboard.button("g", "  " .. "Live grep",
        "<CMD>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>"),
      dashboard.button("p", "  " .. "Package manager ", "<CMD>Lazy<CR>"),
      dashboard.button("u", "⟳  " .. "Update packages", "<CMD>Lazy update<CR>"),
      dashboard.button("m", "🖮  " .. "Mapping", "<CMD>Telescope keymaps<CR>"),
      dashboard.button("q", "  " .. "Quit", "<CMD>qa<CR>"),
    }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    return dashboard
  end,
  config = function(_, dashboard)
    require("alpha").setup(dashboard.opts)
  end
}
