local overrides = require "custom.configs.overrides"
local othePlugins = require "custom.initPlugins.other"
local lspPlugins = require "custom.initPlugins.lsp"
local disablePlugins = require "custom.initPlugins.disable"
local telescopePlugins = require "custom.initPlugins.telescope"
local dapPlugins = require "custom.initPlugins.dap"

---@type NvPluginSpec[]
local plugins = {
  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  disablePlugins.nvim_tree,
  telescopePlugins.lsp_handlers,
  telescopePlugins.file_browser,

  lspPlugins.lsp,

  dapPlugins.dap,
  dapPlugins.mason_dap,
  dapPlugins.dap_ui,

  othePlugins.whichkey,
  othePlugins.better_escape,
  othePlugins.hop,
  othePlugins.diffview,
  othePlugins.lazygit,
  othePlugins.workspaces,
}

return plugins
