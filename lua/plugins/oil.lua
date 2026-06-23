return {
	{
		"stevearc/oil.nvim",

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			require("oil").setup({
				default_file_explorer = true,

				columns = {
					"icon",
				},

				delete_to_trash = true,

				skip_confirm_for_simple_edits = true,

				view_options = {
					show_hidden = true,
				},

				float = {
					padding = 2,
					max_width = 100,
					max_height = 30,

					border = "rounded",
				},
			})

			vim.keymap.set("n", "-", "<CMD>Oil --float<CR>")
		end,
	},
}
