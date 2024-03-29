local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local sources = {
  -- Web
  formatting.prettier,
  -- Lua
  formatting.stylua,
  -- cpp
  formatting.clang_format,
  -- yaml
  formatting.yamlfmt,

  -- ts / js
  -- lint.eslint.with {
  --   method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
  -- },
  -- code_actions.eslint,
  lint.eslint_d,
  code_actions.eslint_d,

  -- golang
  formatting.gofumpt,
  formatting.goimports_reviser,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
