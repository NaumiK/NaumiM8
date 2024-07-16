return {
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/nvim-cmp',
      'L3MON4D3/LuaSnip',
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>l",  "",                       desc = "LSP" },
      { "<leader>lf", "<CMD>LspZeroFormat<CR>", desc = "Formatting", mode = "n" },
      { "<leader>li", "<CMD>LspInfo<CR>",       desc = "Info",       mode = "n" },
      { "<leader>ll", "<CMD>LspLog<CR>",        desc = "Log",        mode = "n" },
      { "<leader>lr", "<CMD>LspRestart<CR>",    desc = "Restart",    mode = "n" },
    },
    config = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.on_attach(function(_, bufnr)
        lsp_zero.default_keymaps({
          buffer = bufnr,
          preserve_mappings = false
        })
        vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', { buffer = bufnr })
      end)
    end
  },
  {
    'williamboman/mason.nvim',
    opts = {},
  },
  {
    "lukas-reineke/lsp-format.nvim",
    opts = {}
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      "Civitasv/cmake-tools.nvim",
      "VonHeikemen/lsp-zero.nvim"
    },
    opts = {
      ensure_installed = { "clangd", "lua_ls", "cmake" },
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup {}
        end,
        clangd = function()
          require('lspconfig').clangd.setup {
            single_file_support = true,
            flags = {
              debounce_text_changes = 150,
            },
            on_new_config = function(new_config, _)
              local status, cmake = pcall(require, "cmake-tools")
              if status then
                cmake.clangd_on_new_config(new_config)
              end
            end,
          }
        end,
        lua_ls = function()
          require('lspconfig').lua_ls.setup {
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" }
                }
              },
            }
          }
        end,
      }
    },
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    lazy = true,
    opts = {
      disable_filetype = { "TelescopePrompt", "vim" }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = {
          "c", "cpp", "lua", "vim", "vimdoc"
        }
      }
    end
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    opts = {},
  }
}
