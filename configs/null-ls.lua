local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier.with {
    filetypes = { "html", "markdown", "css", "javascript", "typescript", "typescriptreact" },
  }, -- so prettier works only on these filetypes
  -- Lua
  formatting.stylua,
  -- cpp
  formatting.clang_format,
  -- prisma
  formatting.prismaFmt.with {
    command = { "cat", "/prisma/schema.prisma", "|", "prisma", "format" },
  },

  lint.eslint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
