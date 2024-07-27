return {
  {
    "L3MON4D3/LuaSnip",
    enabled = false,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
    {
      "SmiteshP/nvim-navbuddy",
      dependencies = {
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
      },
      opts = { lsp = { auto_attach = true } },
      keys = {
        { "<leader>cn", ":Navbuddy<cr>", desc = "Nvigation" },
        { "<leader>cx", ":Trouble diagnostics<cr>", desc = "File diagnostics" },
      },
    },
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      {
        document_color = {
          enabled = true, -- can be toggled by commands
          kind = "inline", -- "inline" | "foreground" | "background"
          inline_symbol = "󰝤 ", -- only used in inline mode
          debounce = 200, -- in milliseconds, only applied in insert mode
        },
        conceal = {
          enabled = false, -- can be toggled by commands
          min_length = nil, -- only conceal classes exceeding the provided length
          symbol = "󱏿", -- only a single character is allowed
          highlight = { -- extmark highlight options, see :h 'highlight'
            fg = "#38BDF8",
          },
        },
        custom_filetypes = {}, -- see the extension section to learn how it works
      },
    },
  },
}
