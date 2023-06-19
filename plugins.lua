local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "folke/which-key.nvim",
    disable = false,
    config = function()
      require "custom.configs.whichkey"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "charludo/projectmgr.nvim",
    lazy = false, -- important!
  },
  {
    "svrana/neosolarized.nvim",
    lazy = false,
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    lazy = false, -- important!
  },
  {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    config = function()
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
    lazy = false, -- important!
  },
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    lazy = false,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    lazy = false,
    requires = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require "custom.configs.masson-dap"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    lazy = false,
    requires = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require "custom.configs.dapui"
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    lazy = false,
    config = function()
      require("symbols-outline").setup()
    end,
  },
}

return plugins
