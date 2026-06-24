return {
	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		opts = {},

		config = function(_, opts)
			local persistence = require("persistence")
			persistence.setup(opts)

			vim.keymap.set("n", "<leader>Ss", function()
				persistence.load()
			end, { desc = "Restore session for cwd" })

			vim.keymap.set("n", "<leader>Sl", function()
				persistence.load({ last = true })
			end, { desc = "Restore last session" })

			vim.keymap.set("n", "<leader>Sd", function()
				persistence.stop()
			end, { desc = "Don't save current session" })
		end,
	},
}
