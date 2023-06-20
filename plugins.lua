local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options
  {
    "nvim-tree/nvim-tree.lua",

    enabled = false,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    lazy = false,
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup {
        extensions = {
          file_browser = {
            initial_mode = "normal",
            hijack_netrw = true,
            mappings = {
              ["n"] = {
                ["o"] = function()
                  vim.cmd ""
                end,
                ["/"] = function()
                  vim.cmd "startisert"
                end,
              },
            },
          },
        },
      }
      require("telescope").load_extension "file_browser"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        {
          "SmiteshP/nvim-navbuddy",
          dependencies = {
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
          },
          opts = { lsp = { auto_attach = true } },
        },

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
    "natecraddock/workspaces.nvim",
    lazy = false,
    config = function()
      require("workspaces").setup()
    end,
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
  -- {
  --   "simrat39/symbols-outline.nvim",
  --   lazy = false,
  --   config = function()
  --     require("symbols-outline").setup {
  --       auto_close = true,
  --     }
  --   end,
  -- },
  {
    "sindrets/diffview.nvim",
    lazy = false,
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
}

return plugins
