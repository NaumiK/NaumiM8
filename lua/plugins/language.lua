return {
{
  "VonHeikemen/lsp-zero.nvim",
  dependencies = {
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
  },
  config = function()
    local lsp_zero = require('lsp-zero')
    lsp_zero.on_attach(function(_, bufnr)
      lsp_zero.default_keymaps({buffer = bufnr})
    end)
  end
},
{
  'williamboman/mason.nvim',
  opts = {},
},
{
  'williamboman/mason-lspconfig.nvim',
  dependencies = {
    "Civitasv/cmake-tools.nvim",
    "VonHeikemen/lsp-zero.nvim"
  },
  opts = {
    ensure_installed = { "clangd", "lua_ls" },
    handlers = {
      function(server_name)
        require('lspconfig')[server_name].setup{}
      end,
      clangd = function()
        require('lspconfig').clangd.setup{
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
      end
    }
  },
},
}
