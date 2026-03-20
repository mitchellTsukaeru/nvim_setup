return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require("nvim-treesitter").setup({
      -- A curated list of parsers to automatically install. 
      -- You can add or remove from this list based on your exact stack.
      ensure_installed = {
          -- Core Neovim & Treesitter Requirements
          "lua", "vim", "vimdoc", "query", "c",

          -- CI/CD, Scripting, and Automation
          "yaml", "bash", "json", "toml", "make",

          -- Infrastructure and Container Orchestration
          "dockerfile", "terraform", "nginx", "ssh_config", "helm",

          -- Cryptography and Domains
          "pem", 

          -- Systems & Application Languages
          "rust", "go", "python", 

          -- Web & Frontend
          "javascript", "typescript", "tsx"
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      auto_install = true,

      highlight = {
        enable = true, -- `false` will disable the whole extension
        
        -- Disable standard vim regex highlighting to rely entirely on treesitter.
        -- This makes highlighting noticeably faster.
        additional_vim_regex_highlighting = false,
      },
      
      indent = {
        enable = true, -- Enables experimental treesitter-based indentation
      },
    })
  end,
}
