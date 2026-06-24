local opt = vim.opt

-----------------------------------------------------------
-- UI
-----------------------------------------------------------
opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.termguicolors = true
opt.title = true
opt.numberwidth = 4

opt.pumheight = 12 -- max items shown in completion popup
opt.pumblend = 5 -- popup menu transparency
opt.cmdheight = 1
opt.showmode = false -- mode is shown in the statusline plugin instead

opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 8
opt.sidescrolloff = 8

opt.wrap = false
opt.linebreak = true
opt.virtualedit = "block"

opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣", extends = "→", precedes = "←" }
opt.fillchars = { eob = " ", fold = " ", foldopen = " ", foldclose = " ", foldsep = " " }

-----------------------------------------------------------
-- Editing
-----------------------------------------------------------
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true
opt.breakindent = true

opt.ignorecase = true
opt.smartcase = true
opt.inccommand = "split" -- live preview of :substitute

opt.clipboard = "unnamedplus"
opt.mouse = "a"

-----------------------------------------------------------
-- Behaviour
-----------------------------------------------------------
opt.confirm = true -- ask to save instead of erroring on :q
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("state") .. "/undo"

opt.updatetime = 200 -- faster CursorHold, gitsigns, diagnostics
opt.timeoutlen = 300 -- faster which-key popup
opt.completeopt = { "menu", "menuone", "noselect" }

opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }

-----------------------------------------------------------
-- Folding (treesitter based, see plugins/treesitter.lua)
-----------------------------------------------------------
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99 -- start with everything unfolded
opt.foldlevelstart = 99
