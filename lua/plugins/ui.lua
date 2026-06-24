return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",

		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},

		opts = {
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true,
				command_palette = false,
				long_message_to_split = true,
				lsp_doc_border = true,
			},
		},
	},

	{
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({
				timeout = 3000,
				render = "minimal",
				stages = "fade",
			})
			vim.notify = require("notify")
		end,
	},

	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		opts = {},
	},
}
