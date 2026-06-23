return {
	{
		"nvimdev/dashboard-nvim",

		event = "VimEnter",

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			local dashboard = require("dashboard")

			dashboard.setup({
				theme = "doom",

				config = {
					header = {
						"",
						"",
						"██╗   ██╗ ██████╗ ██╗██████╗ ",
						"██║   ██║██╔═══██╗██║██╔══██╗",
						"██║   ██║██║   ██║██║██║  ██║",
						"╚██╗ ██╔╝██║   ██║██║██║  ██║",
						" ╚████╔╝ ╚██████╔╝██║██████╔╝",
						"  ╚═══╝   ╚═════╝ ╚═╝╚═════╝ ",
						"",
						"V O I D V I M",
						"",
					},

					center = {
						{
							icon = "  ",
							desc = "Find Files",
							key = "f",
							action = "Telescope find_files",
						},

						{
							icon = "  ",
							desc = "Recent Files",
							key = "r",
							action = "Telescope oldfiles",
						},

						{
							icon = "  ",
							desc = "New File",
							key = "n",
							action = "ene | startinsert",
						},

						{
							icon = "󰒲  ",
							desc = "Lazy",
							key = "l",
							action = "Lazy",
						},

						{
							icon = "  ",
							desc = "Config",
							key = "c",
							action = "edit ~/.config/nvim/init.lua",
						},

						{
							icon = "  ",
							desc = "Quit",
							key = "q",
							action = "qa",
						},
					},

					footer = {
						"",
						"Yet Another Neovim Configuration.",
						"",
					},
				},
			})
		end,
	},
}
