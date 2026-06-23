return {
	{
		"nvim-treesitter/nvim-treesitter",

		branch = "main",

		lazy = false,

		build = ":TSUpdate",

		config = function()
		local ts = require("nvim-treesitter")

		ts.setup({})

		ts.install({
			"lua",
			"vim",
			"vimdoc",
			"query",
		})

		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
			pcall(vim.treesitter.start, args.buf)
			end,
		})
		end,
	},
}
