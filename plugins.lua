local othePlugins = require "custom.initPlugins.other"
local lspPlugins = require "custom.initPlugins.lsp"
local telescopePlugins = require "custom.initPlugins.telescope"
local dapPlugins = require "custom.initPlugins.dap"
local overridePlugins = require "custom.initPlugins.override"

---@type NvPluginSpec[]
local plugins = {

  overridePlugins.treesitter,
  -- overridePlugins.nvim_tree,
  overridePlugins.mason,

  telescopePlugins.lsp_handlers,
  telescopePlugins.ui_select,
  telescopePlugins.file_browser,

  lspPlugins.lsp,

  dapPlugins.dap,
  dapPlugins.dap_ui,

  othePlugins.neo_tree,
  othePlugins.whichkey,
  othePlugins.better_escape,
  othePlugins.hop,
  othePlugins.diffview,
  othePlugins.lazygit,
  othePlugins.auto_tag,
}

return plugins
