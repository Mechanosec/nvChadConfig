local M = {}

M.dap = {
  "mfussenegger/nvim-dap",
  config = function()
    require "custom.configs.dap"
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
