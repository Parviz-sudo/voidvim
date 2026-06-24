return {
	{ -- Copy to the system clipboard over SSH via OSC52
		"ojroques/vim-oscyank",
		branch = "main",
	},
	{ -- Git commands inside Neovim
		"tpope/vim-fugitive",
		cmd = { "Git", "Gdiffsplit", "Gclog", "Gread", "Gwrite", "Gblame" },
	},
	{ -- Show CSS / hex colors inline
		"brenoprata10/nvim-highlight-colors",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("nvim-highlight-colors").setup({})
		end,
	},
}
