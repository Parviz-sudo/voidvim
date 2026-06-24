return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",

		config = function()
			local wk = require("which-key")

			wk.setup({})

			wk.add({
				{ "<leader>f", group = "Find" },
				{ "<leader>l", group = "LSP" },
				{ "<leader>g", group = "Git" },
				{ "<leader>b", group = "Buffer" },
				{ "<leader>s", group = "Split" },
				{ "<leader>x", group = "Trouble" },
				{ "<leader>d", group = "Debug" },
				{ "<leader>h", group = "Harpoon" },
				{ "<leader>S", group = "Session" },
				{ "<leader>t", group = "Terminal" },
				{ "<leader>w", desc = "Save file" },
				{ "<leader>q", desc = "Quit window" },
				{ "<leader>e", desc = "Toggle file explorer" },
			})
		end,
	},
}
