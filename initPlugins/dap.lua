local M = {}
M.dap = {
  "mfussenegger/nvim-dap",
  lazy = false,
}
M.mason_dap = {
  "jay-babu/mason-nvim-dap.nvim",
  lazy = false,
  requires = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    require "custom.configs.masson-dap"
  end,
}
M.dap_ui = {
  "rcarriga/nvim-dap-ui",
  lazy = false,
  requires = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    require "custom.configs.dapui"
  end,
}
return M
