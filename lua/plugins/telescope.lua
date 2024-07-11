return {
    "nvim-telescope/telescope.nvim",
    keys = {
        { "<leader>tt", "<CMD>Telescope<CR>",                                                       mode = { "n"  } },
        { "<leader>tp", "<CMD>Telescope find_files<CR>",                                            mode = { "n"  } },
        { "<leader>tl", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", mode = { "n"  } },
        { "<leader>to", "<CMD>Telescope lsp_document_symbols<CR>",                                  mode = { "n"  } },
        { "<leader>ts", "<CMD>Telescope grep_string<CR>",                                           mode = { "n"  } },
        { "<leader>tm", "<CMD>Telescope keymaps<CR>",                                               mode = { "n"  } },
    },
    cmd = {
        "Telescope",
    },
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-live-grep-args.nvim" },
    },
    config = function()
        local telescope = require("telescope")
        local lga_actions = require("telescope-live-grep-args.actions")

        telescope.setup {
            defaults = {
                prompt_prefix = "% ",
                color_devicons = true,
                selection_caret = "❯ ",
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
    end
  }
