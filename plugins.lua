local othePlugins = require "custom.initPlugins.other"
local lspPlugins = require "custom.initPlugins.lsp"
local disablePlugins = require "custom.initPlugins.disable"
local telescopePlugins = require "custom.initPlugins.telescope"
local dapPlugins = require "custom.initPlugins.dap"
local overridePlugins = require "custom.initPlugins.override"

---@type NvPluginSpec[]
local plugins = {
  overridePlugins.treesitter,
  overridePlugins.nvim_tree,
  overridePlugins.mason,

  -- disablePlugins.nvim_tree,

  telescopePlugins.lsp_handlers,
  -- telescopePlugins.file_browser,

  lspPlugins.lsp,

  dapPlugins.dap,
  dapPlugins.mason_dap,
  dapPlugins.dap_ui,

  othePlugins.whichkey,
  othePlugins.better_escape,
  othePlugins.hop,
  othePlugins.diffview,
  othePlugins.lazygit,
  othePlugins.chatGPT,
}

return plugins
