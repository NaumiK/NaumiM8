return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    keys = {
      { "<leader>nn", "<CMD>NvimTreeToggle<CR>", mode = { "n" }, desc = "Tree toggle" },
      { "<leader>nf", "<CMD>NvimTreeFocus<CR>",  mode = { "n" }, desc = "Tree focus" },

    },
    cmd = { "NvimTreeOpen", "NvimTreeFocus", "NvimTreeToggle" },
    init = function() require("which-key").add { "<leader>n", name = "File tree" } end,
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
      'lewis6991/gitsigns.nvim',  -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
      "folke/which-key.nvim",
    },
    init = function()
      vim.g.barbar_auto_setup = false
      require('which-key').add { "<leader>b", name = "Buffer order" }
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
      { "<leader>b",  name = "Buffer order" },
      { "<leader>bn", "<CMD>BufferOrderByBufferNumber<CR>", mode = { "n" }, desc = "Number" },
      { "<leader>bd", "<CMD>BufferOrderByDirectory<CR>",    mode = { "n" }, desc = "Directory" },
      { "<leader>bl", "<CMD>BufferOrderByLanguage<CR>",     mode = { "n" }, desc = "Language " },
      { "<leader>bw", "<CMD>BufferOrderByWindowNumber<CR>", mode = { "n" }, desc = "Window" },
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
  }
}
