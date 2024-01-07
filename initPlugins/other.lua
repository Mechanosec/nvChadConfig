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
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
M.hop = {
  "phaazon/hop.nvim",
  config = function()
    require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
  end,
  lazy = false, -- important!
}
M.diffview = {
  "sindrets/diffview.nvim",
  event = "VeryLazy",
}
M.whichkey = {
  "folke/which-key.nvim",
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
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require "custom.configs.neo-tree"
  end,
}

M.tabnine = {
  "codota/tabnine-nvim",
  event = "InsertEnter",
  build = "./dl_binaries.sh",
  config = function()
    require("tabnine").setup {
      disable_auto_comment = true,
      accept_keymap = "<C-j>",
      dismiss_keymap = "<C-]>",
      debounce_ms = 500,
      suggestion_color = { gui = "#808080", cterm = 244 },
      exclude_filetypes = { "TelescopePrompt", "NvimTree" },
      log_file_path = nil, -- absolute path to Tabnine log file
    }
  end,
}

M.auto_tag = {
  "windwp/nvim-ts-autotag",
  event = "VeryLazy",
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}

return M
