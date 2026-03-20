local map = vim.keymap.set

map("i", "jj", "<ESC>", { desc = "Exit insert mode" })

map("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
