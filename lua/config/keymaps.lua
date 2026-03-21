local map = vim.keymap.set

map("i", "jj", "<ESC>", { desc = "Exit insert mode" })

map("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Tmux-style <C-b> prefix for window navigation (works in all modes)
for _, mode in ipairs({ "n", "t" }) do
  local esc = mode == "t" and "<C-\\><C-n>" or ""
  map(mode, "<C-b>h", esc .. "<C-w>h", { desc = "Move to left window" })
  map(mode, "<C-b>j", esc .. "<C-w>j", { desc = "Move to below window" })
  map(mode, "<C-b>k", esc .. "<C-w>k", { desc = "Move to above window" })
  map(mode, "<C-b>l", esc .. "<C-w>l", { desc = "Move to right window" })
  map(mode, "<C-b>n", esc .. "<cmd>bnext<cr>", { desc = "Next buffer" })
  map(mode, "<C-b>p", esc .. "<cmd>bprev<cr>", { desc = "Previous buffer" })
  map(mode, "<C-b>x", esc .. "<C-w>c", { desc = "Close window" })
end
