return {
{
  "kdheepak/lazygit.nvim",
  init = function()
    require("which-key").register { ["<leader>g"] = {name = "Git"} }
  end,
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = { { "<leader>gi", "<CMD>LazyGit<CR>", desc = "LazyGit" } }
},
{
  "lewis6991/gitsigns.nvim",
  lazy = false,
  opts = {},
  keys = {
    {"<leader>gp", "<CMD>Gitsigns preview_hunk<CR>",              desc = "Hunk preview",   mode = { "n"      }},
    {"<leader>gt", "<CMD>Gitsigns toggle_current_line_blame<CR>", desc = "Hunk toggle",    mode = { "n"      }},
    {"<leader>gd", "<CMD>Gitsigns toggle_deleted<CR>",            desc = "Toggle deleted",  mode = { "n"      }},
    {"<leader>gf", "<CMD>Gitsigns diffthis<CR>",                  desc = "Diff this",      mode = { "n"      }},
    {"[c", "<CMD>Gitsigns prev_hunk<CR>",                         desc = "Prev hunk",      mode = { "n"      }},
    {"]c", "<CMD>Gitsigns next_hunk<CR>",                         desc = "Next hunk",      mode = { "n"      }},

    {"<leader>gs", "<CMD>Gitsigns stage_hunk<CR>",                desc = "Stage hunk",     mode = { "n", "v" }},
    {"<leader>gr", "<CMD>Gitsigns reset_hunk<CR>",                desc = "Reset hunk",     mode = { "n", "v" }},
    {"<leader>gS", "<CMD>Gitsigns stage_buffer<CR>",              desc = "Stage buffer",   mode = { "n"      }},
    {"<leader>gu", "<CMD>Gitsigns undo_stage_buffer<CR>",         desc = "Undo stage buf", mode = { "n"      }},
  }
},
}
