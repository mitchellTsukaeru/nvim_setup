return {
  "folke/sidekick.nvim",
  config = function(_, opts)
    require("sidekick").setup(opts)
    -- Give the sidekick panel a darker, distinct background
    local bg = "#1a1b26" -- tokyonight "night" base, tweak to taste
    vim.api.nvim_set_hl(0, "SidekickChat", { bg = bg })
  end,
  opts = {
    cli = {
      picker = "fzf-lua",
      mux = {
        enabled = false,
      },
      win = {
        keys = {
          buffers = false, -- free <c-b> for Claude Code background task
        },
      },
    },
  },
  keys = {
    {
      "<tab>",
      function()
        -- if there is a next edit, jump to it, otherwise apply it if any
        if not require("sidekick").nes_jump_or_apply() then
          return "<Tab>" -- fallback to normal tab
        end
      end,
      expr = true,
      desc = "Goto/Apply Next Edit Suggestion",
    },
    {
      "<c-.>",
      function() require("sidekick.cli").focus({ name = "claude" }) end,
      desc = "Sidekick Focus",
      mode = { "n", "t", "i", "x" },
    },
    {
      "<leader>aa",
      function() require("sidekick.cli").toggle({ name = "claude", focus = true }) end,
      desc = "Toggle Claude",
    },
    {
      "<leader>ad",
      function() require("sidekick.cli").close() end,
      desc = "Detach a CLI Session",
    },
    {
      "<leader>at",
      function() require("sidekick.cli").send({ name = "claude", msg = "{this}" }) end,
      mode = { "x", "n" },
      desc = "Send This",
    },
    {
      "<leader>af",
      function() require("sidekick.cli").send({ name = "claude", msg = "{file}" }) end,
      desc = "Send File",
    },
    {
      "<leader>av",
      function() require("sidekick.cli").send({ name = "claude", msg = "{selection}" }) end,
      mode = { "x" },
      desc = "Send Visual Selection",
    },
    {
      "<leader>ap",
      function() require("sidekick.cli").prompt() end,
      mode = { "n", "x" },
      desc = "Sidekick Select Prompt",
    },
  },
}
