return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-file-browser.nvim",
      "Slotos/telescope-lsp-handlers.nvim",
    },
    opts = function()
      local telescope = require "telescope"

      telescope.setup {
        extensions = {
          file_browser = {
            hijack_netrw = true,
          },
        },
      }

      telescope.load_extension "file_browser"

      require("telescope-lsp-handlers").setup()
    end,
  },
}
