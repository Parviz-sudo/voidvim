return {
	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",

		dependencies = {
			-- correct comment strings for embedded languages (e.g. JSX, Vue)
			"JoosepAlviste/nvim-ts-context-commentstring",
		},

		config = function()
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
	},
}
