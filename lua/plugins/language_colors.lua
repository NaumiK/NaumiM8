return {
  { 'iibe/gruvbox-high-contrast',   enabled = false },
  { "ziontee113/color-picker.nvim", cmd = { "PickColor", "PickColorInsert" }, opts = {} },
  {
    "EdenEast/nightfox.nvim",
    opts = {
      options = {
        styles = {
          strings = "italic",
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
          bg0 = "#000000",
          bg1 = "#0d0a13",
          bg2 = "#3d1a30",
          bg3 = "#4f2a3c",
          bg4 = "#55283c",
          green = "#84a695",
          cyan = "#08d3a4",
          comment = "#b08397",
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
