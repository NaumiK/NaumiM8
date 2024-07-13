-- return {
-- {
--   'nvimdev/dashboard-nvim',
--   enabled = true,
--   event = 'VimEnter',
--   dependencies = { 'nvim-tree/nvim-web-devicons' },
--   opts = {
--     theme = "hyper",
--     config = {
--       header = {
--         " ⠀⠀⠀⣤⣤⣤⣤⠀⠀⣤⠛⣤⠀⣤⣤⣤⣤⠀⠀⠀",
--         "   ⠀⠛⣤⠀⠀⠀⠀⣿⣤⠀⠀⠀⠀⣤⠛⠀  ",
--         "   ⠀⠀⠀⣿⠀⠀⣿⠛⣤⣿⠀⠀⣿⠀⠀⠀  ",
--         "   ⠀⣤⠛⠀⠀⠀⠀⠛⣿⠀⠀⠀⠀⠛⣤⠀  ",
--         " ⠀⠀⠀⠛⠛⠛⠛⠀⠛⣤⠛⠀⠀⠛⠛⠛⠛⠀⠀⠀",
--       },
--       footer = {"∅"},
--       shortcut = {
--         { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
--         {
--           icon = ' ',
--           desc = 'Files',
--           group = '@label',
--           action = 'Telescope find_files',
--           key = 'f',
--         },
--         {
--           icon  = 'τ ',
--           group = "@string",
--           desc = "Telescope",
--           key = 't',
--           action = "Telescope",
--         },
--         {
--           icon = '🕮   ',
--           desc = "KeyMap",
--           group = "@constant",
--           key = 'm',
--           action = "Telescope keymaps"
--         }
--       },
--     }
--   },
-- }
-- }
return {
    'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim'
    },
    opts = function ()
      local dashboard = require("alpha.themes.dashboard")
      local logo =  [[
            ⠀⠀⠀⣤⣤⣤⣤⠀⠀⣤⠛⣤⠀⣤⣤⣤⣤⠀⠀⠀
              ⠀⠛⣤⠀⠀⠀⠀⣿⣤⠀⠀⠀⠀⣤⠛⠀  
              ⠀⠀⠀⣿⠀⠀⣿⠛⣤⣿⠀⠀⣿⠀⠀⠀  
              ⠀⣤⠛⠀⠀⠀⠀⠛⣿⠀⠀⠀⠀⠛⣤⠀  
            ⠀⠀⠀⠛⠛⠛⠛⠀⠛⣤⠛⠀⠀⠛⠛⠛⠛⠀⠀⠀
      ]]
      dashboard.section.header.val = vim.split(logo, "\n")
      dashboard.section.buttons.val = {
        dashboard.button("<leader>tp", " " .. " Find file", "<CMD>Telescope find_files<CR>"),
        dashboard.button("<leader>tg", " " .. " Find text",  "<CMD>Telescope grep_string<CR>"),
      }
      return dashboard
    end,
    config = function(_, dashboard)
      require("alpha").setup(dashboard.opts)
    end
  }
