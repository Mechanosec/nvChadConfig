local M = {}
M.better_escape = {
  "max397574/better-escape.nvim",
  event = "InsertEnter",
  config = function()
    require("better_escape").setup()
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
M.chatGPT = {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup()
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
M.neo_tree = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require "custom.configs.neo-tree"
  end,
  lazy = false,
}

M.auto_tag = {
  "windwp/nvim-ts-autotag",
  lazy = false,
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}

return M
