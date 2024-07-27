-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  transparency = true,

  nvdash = {
    load_on_startup = true,
  },

  hl_override = {
    CursorLine = {
      bg = "grey",
    },
    CursorLineNr = {
      bg = "grey",
    },
    TelescopeSelection = {
      bg = "grey",
    },
    Visual = {
      reverse = true,
    },
    Comment = { italic = true },
    ["@comment"] = { italic = true, fg = "light_grey" },
  },
}

return M
