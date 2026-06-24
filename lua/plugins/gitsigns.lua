return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },

		opts = {
			signs = {
				add = { text = "│" },
				change = { text = "│" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
				untracked = { text = "┆" },
			},
		},

		config = function(_, opts)
			local gitsigns = require("gitsigns")
			gitsigns.setup(opts)

			vim.keymap.set("n", "]h", gitsigns.next_hunk, { desc = "Next git hunk" })
			vim.keymap.set("n", "[h", gitsigns.prev_hunk, { desc = "Previous git hunk" })
			vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, { desc = "Preview hunk" })
			vim.keymap.set("n", "<leader>gs", gitsigns.stage_hunk, { desc = "Stage hunk" })
			vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk, { desc = "Reset hunk" })
			vim.keymap.set("n", "<leader>gb", gitsigns.blame_line, { desc = "Blame line" })
			vim.keymap.set("n", "<leader>gd", gitsigns.diffthis, { desc = "Diff against index" })
		end,
	},
}
