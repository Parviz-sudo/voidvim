return {
	{
		"folke/todo-comments.nvim",
		event = { "BufReadPost", "BufNewFile" },

		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		opts = {},

		config = function(_, opts)
			require("todo-comments").setup(opts)

			vim.keymap.set("n", "]t", function()
				require("todo-comments").jump_next()
			end, { desc = "Next TODO comment" })

			vim.keymap.set("n", "[t", function()
				require("todo-comments").jump_prev()
			end, { desc = "Previous TODO comment" })
		end,
	},
}
