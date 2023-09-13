local M = {
  
}
M.lsp =   {
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
        "jose-elias-alvarez/null-ls.nvim",

        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
      require "custom.configs.null-ls"
    end, -- Override to setup mason-lspconfig
  }

return M
