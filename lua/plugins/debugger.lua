return {
	{
		"jay-babu/mason-nvim-dap.nvim",
		event = "VeryLazy",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		opts = {
			automatic_setup = true,
			ensure_installed = {
				"codelldb",
			},
			handlers = {}
		}
	},
	{
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		dependencies = {
			"mfussenegger/nvim-dap",
		},
		keys = {
			{ "<leader>dc", "<CMD>DapContinue<CR>",									desc = "Continue",          mode = "n" },
			{ "<leader>dn", "<CMD>DapStepOver<CR>",									desc = "Step over",         mode = "n" },
			{ "<leader>di", "<CMD>DapStepInto<CR>",									desc = "Step into",         mode = "n" },
			{ "<leader>do", "<CMD>DapStepout<CR>",									desc = "Step out",          mode = "n" },
			{ "<leader>db", "<CMD>DapToggleBreakpoint<CR>",					desc = "Toggle breakpoint", mode = "n" },
			{ "<leader>du", "<CMD>lua require('dapui').toggle()<CR>", 		desc = "Toggle ui",					mode = "n" },
		},
		init = function()
			require("which-key").add { "<leader>d", name = "Debugger" }
			vim.fn.sign_define("DapBreakpoint", { text = "󰏥", texthl = "DapBreakpoint" })
			vim.fn.sign_define("DapBreakpointRejected", { text = "󰏥" })
			vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped" })
		end,
		config = function()
			local dapui = require("dapui")
			local dap = require("dap")
			dapui.setup{}
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
				-- dap.repl.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
				-- dap.repl.close()
			end
		end,
	},
}
