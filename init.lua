vim.wo.relativenumber = true

vim.opt.backup = false

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format()
  end,
})
