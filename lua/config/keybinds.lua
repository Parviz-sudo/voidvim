vim.g.mapleader = " "

-- Clear search highlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear Search Highlight" })

-- Save
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save File" })

-- Quit
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit Window" })

-- Quit All
vim.keymap.set("n", "<leader>Q", "<cmd>qa<CR>", { desc = "Quit Neovim" })
