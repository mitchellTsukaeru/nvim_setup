vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = args.buf, desc = desc })
    end
    map("n", "gd", vim.lsp.buf.definition, "Go to definition")
    map("n", "gr", vim.lsp.buf.references, "Find references")
    map("n", "K", vim.lsp.buf.hover, "Hover documentation")
    map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
    map("n", "<leader>cr", vim.lsp.buf.rename, "Rename symbol")
    map("n", "<leader>cd", vim.diagnostic.open_float, "Line diagnostics")
    map("n", "[d", function() vim.diagnostic.jump({ count = -1 }) end, "Previous diagnostic")
    map("n", "]d", function() vim.diagnostic.jump({ count = 1 }) end, "Next diagnostic")
  end,
})
