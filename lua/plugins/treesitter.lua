return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require("nvim-treesitter").setup({})

    -- Treesitter indentation (highlight is auto-enabled in Neovim 0.11+)
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })

    -- Install parsers (async, no-op if already present)
    require("nvim-treesitter").install({
      "lua", "vim", "vimdoc", "query", "c",
      "yaml", "bash", "json", "toml", "make",
      "dockerfile", "terraform", "nginx", "ssh_config", "helm",
      "pem",
      "rust", "go", "python",
      "javascript", "typescript", "tsx",
      "markdown", "markdown_inline",
    })
  end,
}
