local M = {}

M.nvim_tree = {
  "nvim-tree/nvim-tree.lua",
  enabled = false,
  opts = {
    git = {
      enable = true,
    },

    renderer = {
      highlight_git = true,
      icons = {
        show = {
          git = true,
        },
      },
    },
  },
}

M.mason = {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lua stuff
      "lua-language-server",
      "stylua",

      -- web dev stuff
      "css-lsp",
      "html-lsp",
      "typescript-language-server",
      "prettier",
      "eslint_d",

      -- prisma
      "prisma-language-server",

      -- c/cpp stuff
      "clangd",
      "clang-format",

      -- yaml
      "yamlfmt",

      -- golang
      "gopls",
      "gofumpt",
      "goimports-reviser",
    },
  },
}

M.treesitter = {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vim",
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "c",
      "markdown",
      "markdown_inline",
      "prisma",
      "yaml",

      -- golang
      "go",
      "gosum",
      "gomod",
    },
    indent = {
      enable = true,
    },
  },
}

return M
