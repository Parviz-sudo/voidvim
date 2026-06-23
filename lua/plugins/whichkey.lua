return {
	{
		"folke/which-key.nvim",

		event = "VeryLazy",

		config = function()
			local wk = require("which-key")

			wk.setup({})

			wk.add({

				{ "<leader>f", group = "Find" },
				{ "<leader>g", group = "Git" },
				{ "<leader>l", group = "LSP" },
				{ "<leader>s", group = "Session" },

				{ "<leader>w", desc = "Save" },
				{ "<leader>q", desc = "Quit" },
				{ "<leader>Q", desc = "Quit All" },
			})
		end,
	},
}
