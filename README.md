# VoidVim

> A complete, batteries-included Neovim configuration — minimal to start, but ready for serious daily-driver use.

# Philosophy of Voidvim

The philosophy of VoidVim is to stay easy to understand and easy to extend while still covering everything a modern editor is expected to do: real syntax understanding, a fast fuzzy finder, full LSP tooling, formatting, linting, git integration, and debugging — without making assumptions about which language you use.

Every plugin lives in its own file under `lua/plugins/`, and every plugin defines its own keymaps inside its own `config` function. If you want to remove a feature, delete its file. If you want to add one, copy the pattern from a neighboring file.

---

## What's included

* **Editing core**: Treesitter (syntax highlighting, indentation, folding, text objects), autopairs, smart commenting, surround text objects, fast `flash.nvim` motions, word-under-cursor highlighting, TODO/FIXME highlighting.
* **LSP**: Mason + mason-lspconfig + mason-tool-installer (servers/formatters auto-installed), full keymap set, inlay hints, rich diagnostics with floating windows.
* **Completion**: nvim-cmp with LSP, snippet, buffer and path sources, ghost text.
* **Formatting & linting**: conform.nvim (format on save) and nvim-lint.
* **Fuzzy finding**: Telescope with `fzf-native` and `ui-select`.
* **File explorer**: neo-tree.
* **Buffers**: bufferline tabs at the top.
* **Git**: gitsigns (hunk navigation/stage/reset/blame) + vim-fugitive.
* **Debugging**: nvim-dap + nvim-dap-ui + mason-nvim-dap (generic; install adapters per-language via Mason).
* **Quick file access**: Harpoon.
* **Diagnostics/quickfix UI**: Trouble.
* **Session persistence**: persistence.nvim.
* **UI polish**: tokyonight theme (transparent), lualine, indent guides, noice.nvim + nvim-notify for a nicer cmdline/messages, dressing.nvim, treesitter-context, dashboard.
* **Misc**: OSC52 clipboard over SSH, inline color preview.

---

## Installation

### Requirements

Before installing VoidVim, make sure the following tools are available on your system:

* Neovim >= 0.11
* Git
* A Nerd Font (and a terminal that's configured to use it)
* A C compiler + `make` (needed to build Treesitter parsers and `telescope-fzf-native`)
* Ripgrep (`rg`) — used by Telescope's live grep
* `fd` (optional, but speeds up Telescope's file finding)
* Node.js (optional — only needed if you install LSP servers/formatters that require it, e.g. `pyright`, `prettierd`)

---

### Backup Existing Configuration

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak   # removes old plugin installs / lockfile state
mv ~/.local/state/nvim ~/.local/state/nvim.bak   # removes old undo history / sessions, optional
```

---

### Clone VoidVim

```bash
git clone https://github.com/Parviz-sudo/voidvim ~/.config/nvim
```

---

### Start Neovim

```bash
nvim
```

On first launch, Lazy.nvim will automatically install all plugins, Treesitter parsers will be compiled, and `mason-tool-installer` will install `lua_ls` and `stylua` in the background. Run `:Lazy` to watch progress, and `:Mason` any time you want to install more LSP servers, formatters, or linters for your own languages.

> Note: the `lazy-lock.json` from the previous version of this config was removed since it pinned plugins that no longer exist in this config. Lazy will generate a fresh one on first launch — just remember to commit it afterwards if you want reproducible installs.

---

# Keybindings

Leader key: `Space`

---

## General

| Key          | Action                   |
| ------------ | ------------------------- |
| `<leader>w`  | Save file                 |
| `<leader>W`  | Save all files             |
| `<leader>q`  | Quit window                |
| `<leader>Q`  | Quit all                   |
| `<Esc>`      | Clear search highlight     |
| `<leader>tt` | Open terminal split        |
| `<Esc><Esc>` | Exit terminal mode (in a terminal buffer) |

## Buffers

| Key          | Action                  |
| ------------ | ------------------------ |
| `<S-l>`      | Next buffer              |
| `<S-h>`      | Previous buffer          |
| `<leader>bd` | Delete buffer            |
| `<leader>bo` | Delete all other buffers |
| `<leader>bp` | Pick buffer (bufferline) |
| `<leader>bc` | Pick buffer to close     |

## Windows

| Key                              | Action                  |
| --------------------------------- | ------------------------ |
| `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | Move between windows |
| `<leader>sv`                     | Split vertically         |
| `<leader>sh`                     | Split horizontally       |
| `<leader>se`                     | Equalize split sizes     |
| `<leader>sx`                     | Close split              |
| `<C-Up>` / `<C-Down>`             | Resize height            |
| `<C-Left>` / `<C-Right>`          | Resize width             |

## Editing

| Key                | Action                                |
| ------------------- | -------------------------------------- |
| `J` (normal)        | Join line, keep cursor in place        |
| `<C-d>` / `<C-u>`   | Half-page scroll, centered             |
| `n` / `N`           | Next/previous search result, centered  |
| `J` / `K` (visual)  | Move selection down/up                 |
| `<` / `>` (visual)  | Indent, keeping selection               |
| `<leader>p` (visual)| Paste over selection without clobbering the register |
| `ys{motion}`        | Add surround (e.g. `ysiw"`)             |
| `cs{old}{new}`      | Change surround                         |
| `ds{char}`          | Delete surround                         |
| `S` (visual)        | Surround the selection                  |
| `gcc` / `gc`        | Toggle line/selection comment           |
| `s` / `S`           | Flash jump / Flash Treesitter selection |

## File Explorer

| Key          | Action                          |
| ------------ | -------------------------------- |
| `<leader>e`  | Toggle file explorer (neo-tree)  |
| `<leader>E`  | Reveal current file in explorer  |

## Telescope (Find)

| Key          | Action                      |
| ------------ | ----------------------------- |
| `<leader>ff` | Find files                    |
| `<leader>fg` | Live grep                     |
| `<leader>fb` | List open buffers              |
| `<leader>fh` | Search help tags               |
| `<leader>fr` | Recent files                   |
| `<leader>fw` | Find word under cursor          |
| `<leader>fd` | Find diagnostics                |
| `<leader>fk` | Find keymaps                    |
| `<leader>fc` | Find commands                   |
| `<leader>fs` | Resume last picker               |
| `<leader>/`  | Fuzzy find in current buffer     |

## Harpoon

| Key          | Action                  |
| ------------ | ------------------------- |
| `<leader>ha` | Add current file          |
| `<leader>hh` | Toggle quick menu          |
| `<leader>1`–`<leader>4` | Jump to file 1–4 |
| `<C-S-P>` / `<C-S-N>` | Previous/next harpoon file |

## LSP

| Key          | Action                |
| ------------ | ----------------------- |
| `gd`         | Go to definition         |
| `gD`         | Go to declaration        |
| `gr`         | Go to references          |
| `gi`         | Go to implementation       |
| `gy`         | Go to type definition       |
| `K`          | Hover documentation          |
| `<C-k>`      | Signature help (insert mode) |
| `<leader>rn` | Rename symbol                 |
| `<leader>ca` | Code action                    |
| `<leader>ls` | Document symbols                |
| `<leader>lw` | Workspace symbols                |
| `<leader>ld` | Line diagnostics (floating)       |
| `<leader>lh` | Toggle inlay hints (if supported)  |
| `[d` / `]d`  | Previous/next diagnostic             |

## Formatting & Linting

| Key          | Action                       |
| ------------ | ----------------------------- |
| `<leader>lf` | Format file or visual selection |

Linting runs automatically on save / leaving insert mode for filetypes configured in `lua/plugins/lint.lua`.

## Trouble (diagnostics / quickfix list)

| Key           | Action                        |
| ------------- | ------------------------------- |
| `<leader>xx`  | Toggle diagnostics (workspace)   |
| `<leader>xX`  | Toggle diagnostics (buffer only)  |
| `<leader>xq`  | Toggle quickfix list                |
| `<leader>xl`  | Toggle location list                 |
| `[q` / `]q`   | Previous/next quickfix item            |

## Git

| Key           | Action                |
| ------------- | ----------------------- |
| `]h` / `[h`   | Next/previous hunk        |
| `<leader>gp`  | Preview hunk                |
| `<leader>gs`  | Stage hunk                    |
| `<leader>gr`  | Reset hunk                      |
| `<leader>gb`  | Blame line                       |
| `<leader>gd`  | Diff against index                |
| `:Git`        | Open Fugitive Git status window     |

## Debugging (DAP)

Install a debug adapter for your language first (`:Mason`, e.g. `debugpy`, `delve`, `codelldb`).

| Key           | Action            |
| ------------- | ------------------- |
| `<leader>db`  | Toggle breakpoint     |
| `<leader>dc`  | Start / Continue        |
| `<leader>di`  | Step into                 |
| `<leader>do`  | Step over                   |
| `<leader>dO`  | Step out                      |
| `<leader>dr`  | Toggle REPL                     |
| `<leader>dt`  | Terminate                         |
| `<leader>du`  | Toggle DAP UI                       |

## Sessions

| Key           | Action                       |
| ------------- | ------------------------------ |
| `<leader>Ss`  | Restore session for this directory |
| `<leader>Sl`  | Restore last session                |
| `<leader>Sd`  | Don't save the current session        |

## TODO comments

| Key  | Action                       |
| ---- | ------------------------------ |
| `]t` | Jump to next TODO/FIXME comment  |
| `[t` | Jump to previous TODO/FIXME comment |

## Which-Key

Press `<leader>` and wait to see all available keybindings grouped by category.

## Dashboard

The dashboard is shown automatically on startup and gives quick access to finding files, recent files, a new file, restoring your last session, live grep, `:Lazy`, editing the config, and quitting.

---

## Adding language support

VoidVim makes no assumptions about which languages you use. To add support for a language:

1. Add its Treesitter parser to `ensure_installed` in `lua/plugins/treesitter.lua` (or just open a file of that type — `auto_install` will grab it automatically).
2. Add the LSP server / formatter / linter you want to `lua/plugins/lsp.lua` (`mason-tool-installer`'s `ensure_installed`), `lua/plugins/conform.lua` (`formatters_by_ft`), and `lua/plugins/lint.lua` (`linters_by_ft`).
3. Restart Neovim, or run `:MasonToolInstallerInstall`.

---

## Contributing to VoidVim

You can contribute to VoidVim by opening issues or pull requests.

If you have an idea that will keep VoidVim simple and extensible, open an issue.

---

## License of VoidVim

VoidVim is licensed under the GPLv3 license.
