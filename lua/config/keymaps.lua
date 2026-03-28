local map = vim.keymap.set

map("i", "jj", "<ESC>", { desc = "Exit insert mode" })

map("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Tmux-style <C-b> prefix for window navigation (normal mode only;
-- terminal mode excluded so <C-b> passes through to CLI tools like Claude Code)
map("n", "<C-b>h", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-b>j", "<C-w>j", { desc = "Move to below window" })
map("n", "<C-b>k", "<C-w>k", { desc = "Move to above window" })
map("n", "<C-b>l", "<C-w>l", { desc = "Move to right window" })
map("n", "<C-b>n", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<C-b>p", "<cmd>bprev<cr>", { desc = "Previous buffer" })
map("n", "<C-b>x", "<C-w>c", { desc = "Close window" })
