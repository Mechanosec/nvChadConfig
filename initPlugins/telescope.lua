local M = {}

M.lsp_handlers = {
  "gbrlsnchs/telescope-lsp-handlers.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").load_extension "lsp_handlers"
  end,
}

M.ui_select = {
  "nvim-telescope/telescope-ui-select.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {},
        },
      },
    }
    require("telescope").load_extension "ui-select"
  end,
}

M.file_browser = {
  "nvim-telescope/telescope-file-browser.nvim",
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
}

return M
