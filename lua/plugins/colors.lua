local function enable_transparency()
	local groups = {
		"Normal",
		"NormalNC",
		"NormalFloat",
		"FloatBorder",
		"SignColumn",
		"MsgArea",
		"EndOfBuffer",
	}
	for _, group in ipairs(groups) do
		vim.api.nvim_set_hl(0, group, { bg = "none" })
	end
end

return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,

		opts = {
			style = "storm",
			transparent = true,
		},

		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd.colorscheme("tokyonight")
			enable_transparency()
		end,
	},

	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		opts = {
			theme = "tokyonight",
		},
	},
}
