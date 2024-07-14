return {
  {
    "Civitasv/cmake-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    init = function()
      require("which-key").add { "<leader>c", name = "CMake" }
    end,
    keys = {
      { "<leader>cs", "<CMD>CMakeSettings<CR>",     desc = "Settings" },
      { "<leader>cg", "<CMD>CMakeGenerate<CR>",     desc = "Generate" },
      { "<leader>cb", "<CMD>CMakeBuild<CR>",        desc = "Build" },
      { "<leader>cr", "<CMD>CMakeRun<CR>",          desc = "Run target" },
      { "<leader>cd", "<CMD>CMakeDebug<CR>",        desc = "Debug target" },
      { "<leader>ce", "<CMD>CMakeOpenExecutor<CR>", desc = "Open executor" },
      { "<leader>co", "<CMD>CMakeOpenRunner<CR>",   desc = "Open runner" },
      { "<leader>cq", "<CMD>CMakeQuickStart<CR>",   desc = "Quick start" },
    },
    opts = {
      cmake_build_directory = "build",
      cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
    }
  },
  {
    "p00f/clangd_extensions.nvim",
    ft = { "c", "cpp" },
    dependencies = {
      "VonHeikemen/lsp-zero.nvim",
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<A-o>",      "<CMD>ClangdSwitchSourceHeader<CR>", mode = { "n", "i", "v" } },
      { "<leader>ca", "<CMD>ClangdAST<CR>",                desc = "Print AST",      mode = "n" },
      { "<leader>ci", "<CMD>ClangdSymbolInfo<CR>",         desc = "Symbol info",    mode = "n" },
      { "<leader>ch", "<CMD>ClangdTypeHierarchy<CR>",      desc = "Type hierarchy", mode = "n" },
    },
    config = function()
      local server_options = require("lsp-zero").build_options("clangd", {
        cmd = {
          "clangd",
          "-j=4",
          "--clang-tidy",
          "--background-index",
          "--header-insertion=never",
          "--fallback-style=webkit",
          "--all-scopes-completion",
          "--completion-style=detailed",
          "--pch-storage=memory",
        }
      })
      require("lspconfig").clangd.setup(server_options)
      require("clangd_extensions").setup()
      require("clangd_extensions.inlay_hints").setup_autocmd()
      require("clangd_extensions.inlay_hints").set_inlay_hints()
    end
  }
}
