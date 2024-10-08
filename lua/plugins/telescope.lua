return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>t",  "",                                                                              desc = "Telescope" },
    { "<leader>tt", "<CMD>Telescope<CR>",                                                            mode = { "n" },    desc = "Global" },
    { "<leader>tf", "<CMD>Telescope find_files<CR>",                                                 mode = { "n" },    desc = "Find files" },
    { "<leader>tg", function() require('telescope').extensions.live_grep_args.live_grep_args() end,  mode = { "n" },    desc = "Live grep" },
    { "<leader>tn", function() require('telescope').extensions.notify.notify() end,                  mode = { "n" },    desc = "Notifications" },
    { "<leader>to", "<CMD>Telescope lsp_document_symbols<CR>",                                       mode = { "n" },    desc = "Document symbols" },
    { "<leader>ts", "<CMD>Telescope grep_string<CR>",                                                mode = { "n" },    desc = "Grep string" },
    { "<leader>tm", "<CMD>Telescope keymaps<CR>",                                                    mode = { "n" },    desc = "Keymaps" },
  },
  cmd = {
    "Telescope",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
    "nvim-telescope/telescope-frecency.nvim",
    "nvim-telescope/telescope-dap.nvim",
  },
  lazy = true,
  config = function()
    local telescope = require("telescope")
    local lga_actions = require("telescope-live-grep-args.actions")

    telescope.setup {
      defaults = {
        prompt_prefix = "% ",
        color_devicons = true,
        selection_caret = "> ",
        preview = {
          treesitter = true,
        },
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      },
      pickers = {
        colorscheme = {
          enable_preview = true,
        },
        buffers = {
          theme = "dropdown",
          previewer = false,
          borderchars = {
            prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
            results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
            preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
          },
        }
      },
      extensions = {
        live_grep_args = {
          auto_quoting = true,
          mappings = {
            i = {
              ["<C-k>"] = lga_actions.quote_prompt(),
              ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
            },
          },
        }
      }
    }
    telescope.load_extension("live_grep_args")
    telescope.load_extension("frecency")
    telescope.load_extension("dap")
  end
}
