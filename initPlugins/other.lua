local M = {}
M.better_escape = {
  "max397574/better-escape.nvim",
  event = "InsertEnter",
  config = function()
    require("better_escape").setup()
  end,
}
M.workspaces = {
  "natecraddock/workspaces.nvim",
  lazy = false,
  config = function()
    require("workspaces").setup()
  end,
}
M.lazygit = {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  lazy = false, -- important!
}
M.hop = {
  "phaazon/hop.nvim",
  branch = "v2", -- optional but strongly recommended
  config = function()
    require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
  end,
  lazy = false, -- important!
}
M.diffview = {
  "sindrets/diffview.nvim",
  lazy = false,
}
M.whichkey = {
  "folke/which-key.nvim",
  disable = false,
  config = function()
    require "custom.configs.whichkey"
  end,
}

-- {
--   "windwp/nvim-ts-autotag",
--   lazy = false,
--   config = function()
--     require("nvim-ts-autotag").setup()
--   end,
-- },

return M
