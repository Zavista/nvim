vim.lsp.config('gopls', {
  cmd = { 'gopls' },
  filetypes = { 'go', 'gomod' },
  root_markers = { 'go.work', 'go.mod', '.git' },
  settings = {
    gopls = {
      usePlaceholders = true,
      staticcheck = true,
    },
  },
})

-- format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
