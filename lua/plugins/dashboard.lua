return {
{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    theme = "hyper",
    config = {
      header = {
        " ⠀⠀⠀⣤⣤⣤⣤⠀⠀⣤⠛⣤⠀⣤⣤⣤⣤⠀⠀⠀",
        "   ⠀⠛⣤⠀⠀⠀⠀⣿⣤⠀⠀⠀⠀⣤⠛⠀  ",
        "   ⠀⠀⠀⣿⠀⠀⣿⠛⣤⣿⠀⠀⣿⠀⠀⠀  ",
        "   ⠀⣤⠛⠀⠀⠀⠀⠛⣿⠀⠀⠀⠀⠛⣤⠀  ",
        " ⠀⠀⠀⠛⠛⠛⠛⠀⠛⣤⠛⠀⠀⠛⠛⠛⠛⠀⠀⠀",
      },
      footer = {"∅"},
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          desc = 'Files',
          group = '@label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          icon  = 'τ ',
          group = "@string",
          desc = "Telescope",
          key = 't',
          action = "Telescope",
        },
        {
          icon = '🕮   ',
          desc = "KeyMap",
          group = "@constant",
          key = 'm',
          action = "Telescope keymaps"
        }
      },
    }
  },
}
}
