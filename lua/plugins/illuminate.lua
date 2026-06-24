return {
	{
		"RRethy/vim-illuminate",
		event = { "BufReadPost", "BufNewFile" },

		config = function()
			require("illuminate").configure({
				delay = 200,
				-- the "treesitter" provider can trigger a known nvim-treesitter
				-- locals.lua bug ("attempt to call method 'parent' (a nil value)")
				-- on some files; lsp + regex cover the same use case safely.
				providers = { "lsp", "regex" },
			})
		end,
	},
}
