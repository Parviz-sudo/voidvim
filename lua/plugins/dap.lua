return {
	{
		"mfussenegger/nvim-dap",

		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"jay-babu/mason-nvim-dap.nvim",
		},

		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			-- Installs/registers debug adapters for whatever you add to
			-- `ensure_installed` below (e.g. "python", "delve", "codelldb"...).
			require("mason-nvim-dap").setup({
				automatic_installation = true,
				ensure_installed = {},
			})

			dapui.setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
			vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Start / Continue" })
			vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step into" })
			vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Step over" })
			vim.keymap.set("n", "<leader>dO", dap.step_out, { desc = "Step out" })
			vim.keymap.set("n", "<leader>dr", dap.repl.toggle, { desc = "Toggle REPL" })
			vim.keymap.set("n", "<leader>dt", dap.terminate, { desc = "Terminate" })
			vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Toggle DAP UI" })
		end,
	},
}
