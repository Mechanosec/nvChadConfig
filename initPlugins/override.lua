local overrides = require "custom.configs.overrides"

local M = {}

M.nvim_tree = {
  "nvim-tree/nvim-tree.lua",
  opts = overrides.nvimtree,
}
M.mason = {
  "williamboman/mason.nvim",
  opts = overrides.mason,
}

M.treesitter = {
  "nvim-treesitter/nvim-treesitter",
  opts = overrides.treesitter,
}

return M
