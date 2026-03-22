# Neovim Setup

Minimal Neovim IDE config with AI integration, LSP, and fuzzy finding.

## Prerequisites

- Neovim 0.11+
- Git
- [fd](https://github.com/sharkdp/fd) (fast file finder)
- A [Nerd Font](https://www.nerdfonts.com/) for icons

## Installation

```bash
git clone git@github.com:mitchellTsukaeru/nvim_setup.git ~/.config/nvim
nvim
```

Lazy.nvim will auto-install all plugins on first launch.

## Plugins

| Plugin | Purpose |
|---|---|
| **tokyonight.nvim** | Color scheme |
| **sidekick.nvim** | Claude AI integration |
| **nvim-lspconfig** + **mason.nvim** | LSP support with auto-installed servers |
| **blink.cmp** | Completion engine |
| **fzf-lua** | Fuzzy file/grep search |
| **nvim-treesitter** | Syntax highlighting |
| **which-key.nvim** | Keybinding hints |
| **nvim-autopairs** | Auto-closing brackets |
| **render-markdown.nvim** | Markdown preview |

## LSP Servers

Auto-installed via Mason: Lua, Rust, Go, Python, TypeScript, Bash, JSON, YAML, Terraform, Docker.

## Keybindings

**General**

| Key | Action |
|---|---|
| `jj` | Exit insert mode |
| `<Esc>` | Clear search highlights |

**Window Navigation (Tmux-style `<C-b>` prefix)**

| Key | Action |
|---|---|
| `<C-b>h/j/k/l` | Move between windows |
| `<C-b>n/p` | Next/previous buffer |
| `<C-b>x` | Close window |

**Fuzzy Finding**

| Key | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Switch buffers |

**LSP**

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gr` | Find references |
| `K` | Hover docs |
| `<leader>ca` | Code action |
| `<leader>cr` | Rename symbol |
| `<leader>cd` | Line diagnostics |

**Claude AI (Sidekick)**

| Key | Action |
|---|---|
| `<C-.>` | Focus Claude panel |
| `<leader>aa` | Toggle Claude panel |
| `<leader>at` | Send line/selection to Claude |
| `<leader>af` | Send file to Claude |
| `<leader>av` | Send visual selection |
| `<Tab>` | Apply next edit suggestion |
