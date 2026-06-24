return {
	{
		"stevearc/conform.nvim",

		event = { "BufWritePre" },
		cmd = { "ConformInfo" },

		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					-- Add more filetypes here, for example:
					-- python = { "ruff_format" },
					-- javascript = { "prettierd", "prettier", stop_after_first = true },
					-- json = { "prettierd", "prettier", stop_after_first = true },
				},

				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			})

			vim.keymap.set({ "n", "v" }, "<leader>lf", function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end, { desc = "Format file or selection" })
		end,
	},
}
