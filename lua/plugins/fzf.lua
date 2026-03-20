return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "nvim-mini/mini.icons" },
  ---@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  ---@diagnostic disable: missing-fields
  opts = {
	-- Use 'fd' instead of 'find'  (faster and modern)
	files = {
		cmd = "fd --color=never --type f --hidden --follow --exclude .git",
	},
  },
  ---@diagnostic enable: missing-fields
  keys = {
    -- { "Shortcut", "Command", desc = "Description" }
    { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
    { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Switch Buffers" },
  },
}
