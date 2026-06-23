return {
	{
		"hrsh7th/nvim-cmp",

		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"onsails/lspkind.nvim",

			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},

		config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		local luasnip = require("luasnip")

		cmp.setup({
			window = {
				completion = cmp.config.window.bordered(),
				  documentation = cmp.config.window.bordered(),
			},

			snippet = {
				expand = function(args)
				luasnip.lsp_expand(args.body)
				end,
			},

			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol_text",
				}),
			},

			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(),

												["<CR>"] = cmp.mapping.confirm({
													select = true,
												}),

												["<Tab>"] = cmp.mapping(function(fallback)
												if cmp.visible() then
													cmp.select_next_item()
													elseif luasnip.expand_or_jumpable() then
														luasnip.expand_or_jump()
														else
															fallback()
															end
															end, { "i", "s" }),

															["<S-Tab>"] = cmp.mapping(function(fallback)
															if cmp.visible() then
																cmp.select_prev_item()
																elseif luasnip.jumpable(-1) then
																	luasnip.jump(-1)
																	else
																		fallback()
																		end
																		end, { "i", "s" }),
			}),

			sources = {
				{
					name = "nvim_lsp",
				},
				{
					name = "luasnip",
				},
			},
		})
		end,
	},
}
