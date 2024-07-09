local function default_header() 
  return {
" ⠀⠀⠀⣤⣤⣤⣤⠀⠀⣤⠛⣤⠀⣤⣤⣤⣤⠀⠀⠀",
"   ⠀⠛⣤⠀⠀⠀⠀⣿⣤⠀⠀⠀⠀⣤⠛⠀  ",
"   ⠀⠀⠀⣿⠀⠀⣿⠛⣤⣿⠀⠀⣿⠀⠀⠀  ",
"   ⠀⣤⠛⠀⠀⠀⠀⠛⣿⠀⠀⠀⠀⠛⣤⠀  ",
" ⠀⠀⠀⠛⠛⠛⠛⠀⠛⣤⠛⠀⠀⠛⠛⠛⠛⠀⠀⠀",
  }
end

require('dashboard').setup {
  theme = "doom",
  config = {
    header = default_header(),
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Tree toggle',
        desc_hl = 'String',
        key = 'n',
        keymap = 'SPC n',
        key_hl = 'Number',
        key_format = ' %s', -- remove default surrounding `[]`
        action = ':NvimTreeToggle'
      },
    },
    footer = {}
  }
}
