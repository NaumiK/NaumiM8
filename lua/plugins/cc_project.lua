return {
{
  "Civitasv/cmake-tools.nvim",
  dependencies = {"nvim-lua/plenary.nvim"},
	init = function()
		require("which-key").add { "<leader>c", name="CMake" }
	end,
	keys = {
		{"<leader>cs", "<CMD>CMakeSettings<CR>", 					 desc = "Settings"     },
		{"<leader>cg", "<CMD>CMakeGenerate<CR>", 					 desc = "Generate"     },
		{"<leader>cb", "<CMD>CMakeBuild<CR>",		 					 desc = "Build"        },
		{"<leader>cr", "<CMD>CMakeRun<CR>",			 					 desc = "Run target"   },
		{"<leader>cd", "<CMD>CMakeDebug<CR>",			 				 desc = "Debug target" },
		{"<leader>ce", "<CMD>CMakeOpenExecutor<CR>",			 desc = "Open executor"},
		{"<leader>co", "<CMD>CMakeOpenRunner<CR>",			 	 desc = "Open runner"  },
		{"<leader>cq", "<CMD>CMakeQuickStart<CR>",			 	 desc = "Quick start"  },
	},
  opts = {
      cmake_build_directory = "build",
      cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
  }
}
}
