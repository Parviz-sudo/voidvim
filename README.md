# VoidVim

> Yet Another Neovim Configuration.

# Philosophy of VoidVim

The philosophy of VoidVim is to be minimal by default and not to make any language- assumptions.

VoidVim is made to be easy to understand and easy to extend.

---

# Keybinds

## General

| Mode | Key         | Action                 |
| ---- | ----------- | ---------------------- |
| `n`  | `<leader>e` | Toggle Neo-tree        |
| `n`  | `<leader>w` | Save current file      |
| `n`  | `<leader>q` | Quit current window    |
| `n`  | `<leader>Q` | Quit Neovim            |
| `n`  | `<Esc>`     | Clear search highlight |
| `n`  | `<S-l>`     | Next buffer            |
| `n`  | `<S-h>`     | Previous buffer        |

---

## Telescope

| Mode | Key          | Action            |
| ---- | ------------ | ----------------- |
| `n`  | `<leader>ff` | Find files        |
| `n`  | `<leader>fg` | Live grep         |
| `n`  | `<leader>fb` | List open buffers |
| `n`  | `<leader>fh` | Open help tags    |

---

## Harpoon

| Mode | Key          | Action                |
| ---- | ------------ | --------------------- |
| `n`  | `<leader>a`  | Add current file      |
| `n`  | `<leader>fm` | Open Harpoon menu     |
| `n`  | `<C-p>`      | Previous Harpoon file |
| `n`  | `<C-n>`      | Next Harpoon file     |

---

## LSP

| Mode | Key          | Action              |
| ---- | ------------ | ------------------- |
| `n`  | `gd`         | Go to definition    |
| `n`  | `K`          | Hover documentation |
| `n`  | `<leader>rn` | Rename symbol       |
| `n`  | `<leader>ca` | Code actions        |

---

## Formatting

| Mode | Key          | Action              |
| ---- | ------------ | ------------------- |
| `n`  | `<leader>lf` | Format current file |

---

## Completion

| Mode | Key         | Action                                  |
| ---- | ----------- | --------------------------------------- |
| `i`  | `<C-Space>` | Trigger completion                      |
| `i`  | `<CR>`      | Confirm selection                       |
| `i`  | `<Tab>`     | Next completion item / snippet jump     |
| `i`  | `<S-Tab>`   | Previous completion item / snippet jump |

---

## Which-Key

Press:

| Mode | Key        | Action                     |
| ---- | ---------- | -------------------------- |
| `n`  | `<leader>` | Show available keybindings |

---

## Bufferline

| Mode | Key     | Action          |
| ---- | ------- | --------------- |
| `n`  | `<S-l>` | Next buffer     |
| `n`  | `<S-h>` | Previous buffer |


---

## Contributing to VoidVim

You can contribute to VoidVim by opening issues. Pull requests.

If you have an idea that will keep VoidVim simple and extensible you can open a issue.

---

## License of VoidVim

VoidVim is licensed under the GPLv3 license.
