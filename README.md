# VoidVim

> Yet Another Neovim Configuration.

# Philosophy of VoidVim

The philosophy of VoidVim is to be minimal by default and not to make any language- assumptions.

VoidVim is made to be easy to understand and easy to extend.

---

## Installation

### Requirements

Before installing VoidVim, make sure the following tools are available on your system:

* Neovim >= 0.11
* Git
* A Nerd Font
* Ripgrep (`rg`)

---

### Backup Existing Configuration

```bash
mv ~/.config/nvim ~/.config/nvim.bak
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

On first launch, Lazy.nvim will automatically install all required plugins.

---

# Keybindings

Leader key: `Space`

---

## General

| Key         | Action                     |
| ----------- | -------------------------- |
| `<leader>w` | Save current file          |
| `<leader>q` | Quit current window        |
| `<leader>e` | Open file explorer (`:Ex`) |
| `<Esc>`     | Clear search highlights    |
| `<S-l>`     | Next buffer                |
| `<S-h>`     | Previous buffer            |

---

## Telescope

| Key          | Action            |
| ------------ | ----------------- |
| `<leader>ff` | Find files        |
| `<leader>fg` | Live grep         |
| `<leader>fb` | List open buffers |
| `<leader>fh` | Search help tags  |

---

## LSP

| Key          | Action              |
| ------------ | ------------------- |
| `gd`         | Go to definition    |
| `K`          | Hover documentation |
| `<leader>ca` | Code actions        |
| `<leader>rn` | Rename symbol       |

---

## Formatting

| Key          | Action              |
| ------------ | ------------------- |
| `<leader>lf` | Format current file |

---

## Completion (CMP)

| Key         | Action                                          |
| ----------- | ----------------------------------------------- |
| `<C-Space>` | Trigger completion menu                         |
| `<CR>`      | Confirm completion                              |
| `<Tab>`     | Next completion item / expand snippet           |
| `<S-Tab>`   | Previous completion item / jump back in snippet |

---

## Git

### Fugitive

| Command | Action                          |
| ------- | ------------------------------- |
| `:Git`  | Open Fugitive Git status window |

### Gitsigns

Git signs are displayed automatically in the sign column.

---

## Dashboard

The dashboard is shown automatically on startup and provides quick access to common actions.

---

## Which-Key

Press `<leader>` and wait to see all available keybindings grouped by category.

---

## Contributing to VoidVim

You can contribute to VoidVim by opening issues. Pull requests.

If you have an idea that will keep VoidVim simple and extensible you can open a issue.

---

## License of VoidVim

VoidVim is licensed under the GPLv3 license.
