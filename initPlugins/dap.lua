local M = {}
M.dap = {
  "mfussenegger/nvim-dap",
  config = function()
    require "custom.configs.dap"
  end,
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
  event = "VeryLazy",
  requires = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    require "custom.configs.dapui"
  end,
}
return M
