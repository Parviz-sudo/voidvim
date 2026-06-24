return {
	{
		"folke/flash.nvim",
		event = "VeryLazy",

		opts = {},

		-- NOTE: "S" is intentionally NOT bound in visual mode here, since
		-- nvim-surround already owns visual-mode "S" (add surround).
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash jump",
			},
			{
				"S",
				mode = { "n", "o" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash treesitter selection",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Treesitter search",
			},
		},
	},
}
