return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    keys = {
      { "<leader>f",  "",                        desc = "+File tree" },
      { "<leader>ft", "<CMD>NvimTreeToggle<CR>", mode = { "n" },     desc = "Tree toggle" },
      { "<leader>ff", "<CMD>NvimTreeFocus<CR>",  mode = { "n" },     desc = "Tree focus" },

    },
    cmd = { "NvimTreeOpen", "NvimTreeFocus", "NvimTreeToggle" },
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "folke/which-key.nvim",
    },
    opts = {
    },
  },
  {
    "folke/which-key.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "echasnovski/mini.icons"
    },
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
      "folke/which-key.nvim",
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {},
    lazy = false,
    keys = {
      -- Goto prev/next
      { "<A-,>",      "<CMD>BufferPrevious<CR>",            mode = { "n" } },
      { "<A-.>",      "<CMD>BufferNext<CR>",                mode = { "n" } },
      -- Move  prev/next
      { "<A-<>",      "<CMD>BufferMovePrevious<CR>",        mode = { "n" } },
      { "<A->>",      "<CMD>BufferMoveNext<CR>",            mode = { "n" } },
      -- Goto buffer X
      { "<A-1>",      "<CMD>BufferGoto 1<CR>",              mode = { "n" } },
      { "<A-2>",      "<CMD>BufferGoto 2<CR>",              mode = { "n" } },
      { "<A-3>",      "<CMD>BufferGoto 3<CR>",              mode = { "n" } },
      { "<A-4>",      "<CMD>BufferGoto 4<CR>",              mode = { "n" } },
      { "<A-5>",      "<CMD>BufferGoto 5<CR>",              mode = { "n" } },
      { "<A-6>",      "<CMD>BufferGoto 6<CR>",              mode = { "n" } },
      { "<A-7>",      "<CMD>BufferGoto 7<CR>",              mode = { "n" } },
      { "<A-8>",      "<CMD>BufferGoto 8<CR>",              mode = { "n" } },
      { "<A-9>",      "<CMD>BufferGoto 9<CR>",              mode = { "n" } },
      { "<A-0>",      "<CMD>BufferLast<CR>",                mode = { "n" } },
      -- Pin/unpin buffer
      { "<A-p>",      "<CMD>BufferPin<CR>",                 mode = { "n" } },
      -- Close buffer
      { "<A-c>",      "<CMD>BufferClose<CR>",               mode = { "n" } },
      -- Sort buffers
      { "<leader>b",  "",                                   desc = "Buffer order" },
      { "<leader>bn", "<CMD>BufferOrderByBufferNumber<CR>", mode = { "n" },       desc = "Number" },
      { "<leader>bd", "<CMD>BufferOrderByDirectory<CR>",    mode = { "n" },       desc = "Directory" },
      { "<leader>bl", "<CMD>BufferOrderByLanguage<CR>",     mode = { "n" },       desc = "Language " },
      { "<leader>bw", "<CMD>BufferOrderByWindowNumber<CR>", mode = { "n" },       desc = "Window" },
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  {
    'nvim-lualine/lualine.nvim',
    enabled = true,
    dependencies = { 'nvim-tree/nvim-web-devicons', 'meuter/lualine-so-fancy.nvim' },
    opts = {
      options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
        refresh = {
          statusline = 100,
        },
      },
      sections = {
        lualine_a = {
          { "fancy_mode" }
        },
        lualine_b = {
          { "fancy_branch", color = { fg = "#ffffff" } },
          { "fancy_diff" },
        },
        lualine_c = {
          { "fancy_cwd" }
        },
        lualine_x = {
          { "fancy_macro" },
          { "fancy_diagnostics" },
          { "fancy_searchcount" },
          { "fancy_location" },
        },
        lualine_y = {
          { "fancy_filetype", color = { fg = "#ffffff" } },
        },
        lualine_z = {
          { "fancy_lsp_servers" },
        },

      }
    }
  },
  {
    "xiyaowong/transparent.nvim"
  },
  {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  opts = {
    timeout = 500,
    render = "wrapped-compact"
  }
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      presets = {
          bottom_search = true,
          command_palette = true,
          long_message_to_split = true,
          inc_rename = false,
          lsp_doc_border = false,
        },
    },
    keys = {
      {"<leader>n", "", desc = "Notifications"},
      {"<leader>nl", function () require("noice").cmd("last") end, desc = "Last message"},
      {"<leader>nh", function () require("noice").cmd("history") end, desc = "History"},
      {"<leader>na", function () require("noice").cmd("all") end, desc = "All"},
      {"<leader>nd", function () require("noice").cmd("dismiss") end, desc = "Dismiss All"},
      {"<leader>nt", function () require("noice").cmd("pick") end, desc = "Telescope pick"},
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  }
}
