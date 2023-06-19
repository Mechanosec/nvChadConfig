local present, wk = pcall(require, "which-key")
if not present then
  return
end
wk.register {
  ["<leader>"] = {
    g = { name = "+Git" },
    l = { name = "+LSP" },
    N = { name = "+NvChad" },
    f = { name = "+Find" },
    t = { name = "+Terminal" },
  },
}
