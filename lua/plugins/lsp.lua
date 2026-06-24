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
		-- Keeps the LSP servers, formatters and linters declared below
		-- installed and up to date, without you having to run :Mason by hand.
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},

		config = function()
			require("mason-tool-installer").setup({
				-- Add any LSP server / formatter / linter name from `:Mason`
				-- (e.g. "pyright", "ruff", "prettierd", "gopls"...).
				ensure_installed = {
					"lua_ls",
					"stylua",
				},
				auto_update = false,
				run_on_start = true,
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",

		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},

		config = function()
			vim.diagnostic.config({
				virtual_text = {
					prefix = "●",
					spacing = 4,
				},
				severity_sort = true,
				underline = true,
				float = { border = "rounded", source = true },
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = "",
						[vim.diagnostic.severity.WARN] = "",
						[vim.diagnostic.severity.HINT] = "",
						[vim.diagnostic.severity.INFO] = "",
					},
				},
			})

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("lsp_attach_keymaps", { clear = true }),
				callback = function(event)
					local opts = { buffer = event.buf, silent = true }
					local client = vim.lsp.get_client_by_id(event.data.client_id)

					local function set(mode, lhs, rhs, desc)
						vim.keymap.set(mode, lhs, rhs, vim.tbl_extend("force", opts, { desc = desc }))
					end

					set("n", "gd", vim.lsp.buf.definition, "Go to definition")
					set("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
					set("n", "gr", vim.lsp.buf.references, "Go to references")
					set("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
					set("n", "gy", vim.lsp.buf.type_definition, "Go to type definition")

					set("n", "K", vim.lsp.buf.hover, "Hover documentation")
					set("n", "<C-k>", vim.lsp.buf.signature_help, "Signature help")

					set("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
					set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action")

					set("n", "<leader>ls", vim.lsp.buf.document_symbol, "Document symbols")
					set("n", "<leader>lw", vim.lsp.buf.workspace_symbol, "Workspace symbols")

					set("n", "<leader>ld", vim.diagnostic.open_float, "Line diagnostics")

					if client and client:supports_method("textDocument/inlayHint", { bufnr = event.buf }) then
						set("n", "<leader>lh", function()
							local enabled = vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf })
							vim.lsp.inlay_hint.enable(not enabled, { bufnr = event.buf })
						end, "Toggle inlay hints")
					end
				end,
			})

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("*", {
				capabilities = capabilities,
			})
		end,
	},
}
