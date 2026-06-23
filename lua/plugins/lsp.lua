return {
	{
		"williamboman/mason.nvim",
		config = function()
		require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},

		opts = {
			automatic_enable = true,
		},
	},

	{
		"neovim/nvim-lspconfig",

		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},

		config = function()
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(event)
			local opts = {
				buffer = event.buf,
				silent = true,
			}

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

			vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, opts)
			end,
		})

		local capabilities =
		require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("*", {
			capabilities = capabilities,
		})
		end,
	},
}
