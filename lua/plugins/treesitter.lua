return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  init = function()
    -- Register before any buffer's FileType event fires
    vim.treesitter.language.register("tsx", "javascriptreact")
  end,
  config = function()
    require("nvim-treesitter").setup({})

    local ft_lang_override = { javascriptreact = "tsx" }

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        local lang = ft_lang_override[args.match]
          or vim.treesitter.language.get_lang(args.match)
          or args.match
        pcall(vim.treesitter.start, args.buf, lang)
        vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })

    -- Retro-apply to the buffer that triggered plugin load
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
      if vim.api.nvim_buf_is_loaded(buf) then
        local ft = vim.bo[buf].filetype
        if ft ~= "" then
          local lang = ft_lang_override[ft] or vim.treesitter.language.get_lang(ft) or ft
          pcall(vim.treesitter.start, buf, lang)
        end
      end
    end

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
