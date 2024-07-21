return {
  {
    "tris203/precognition.nvim",
    event = "VeryLazy",
    enabled = true,
    opts = {
      disabled_fts = {
        "alpha",
      }
    }
  },
  {
    "m4xshen/hardtime.nvim",
    enabled = true,
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      disable_mouse = false,
    }
  }
}
