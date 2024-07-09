return {
{ 
  'nvim-treesitter/nvim-treesitter',
  opts = {
    ensure_installed = {
    "lua",
    "c",
    "cpp",
    },

    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
    },
  },
},
{ 'neovim/nvim-lspconfig' },
-- Autocomplete support
{ 'hrsh7th/cmp-nvim-lsp' },
{ 'hrsh7th/cmp-buffer' },
{ 'hrsh7th/cmp-path' },
{ 'hrsh7th/cmp-cmdline' },
{ 'hrsh7th/nvim-cmp' },
{
  'williamboman/mason.nvim',
  opts = {
    ui = {
    icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    }
  }
},
{
  "HiPhish/rainbow-delimiters.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", }
}
}
