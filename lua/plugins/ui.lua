return {
{
  "nvim-tree/nvim-tree.lua",
  version="*",
  lazy=false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {},
},
{
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {}
},
{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  opts = {},
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
},
{
  'romgrk/barbar.nvim',
   dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
   },
   init = function() vim.g.barbar_auto_setup = false end,
   opts = {
   },
   version = '^1.0.0', -- optional: only update when a new 1.x version is released
},
{
  'iibe/gruvbox-high-contrast'
},
}

