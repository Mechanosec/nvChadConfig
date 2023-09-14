local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  -- Web
  formatting.prettier,
  -- Lua
  formatting.stylua,
  -- cpp
  formatting.clang_format,

  lint.eslint.with {
    method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
  },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
