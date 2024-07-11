return {
{ 'iibe/gruvbox-high-contrast' },
{
  "EdenEast/nightfox.nvim",
  opts = {
    options = {
      styles = {
        strings = "italic" ,
        functions = "italic,bold"
      },
    },
    palettes = {
      carbonfox = {
        red = "#ad3235",
        pink = "#fc1d78",
        yellow = "#d0ba67",
        magenta = "#8066f5",
        fg1 = "#ebd9bc",
        fg3 = "#ad3235",
        bg0 = "#0a0a0a",
        bg1 = "#0f0c15",
        bg2 = "#3d1a30",
        bg3 = "#4f2a3c",
        bg4 = "#55283c",
        green = "#84a695",
        cyan = "#08d3a4",
        comment = "#4f2a3c",
        sel0 = "#3d1a30",
        orange = "#e08e50",
      },
    },
    specs = {
      all = {
        syntax = {
          number = "orange",
          const = "orange",
          keyword = "cyan",
          variable = "white",
          statement = "white",
          func = "cyan",
          operator = "pink",
          builtin0 = "pink",
          builtin1 = "white",
        }
      }
    }
  },
},
{
  "HiPhish/rainbow-delimiters.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", }
}
}
