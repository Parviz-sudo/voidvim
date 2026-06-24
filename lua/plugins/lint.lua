return {
	{
		"mfussenegger/nvim-lint",

		event = {
			"BufReadPre",
			"BufNewFile",
		},

		config = function()
			local lint = require("lint")

			lint.linters_by_ft = {
				python = { "ruff" },
				-- Add more filetypes here, for example:
				-- javascript = { "eslint_d" },
				-- sh = { "shellcheck" },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
}
