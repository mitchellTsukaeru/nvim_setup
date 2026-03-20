-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set 

map("i", "jj", "<ESC>", { desc = "Exit insert mode" })

map("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
