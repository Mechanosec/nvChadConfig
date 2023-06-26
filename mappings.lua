---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["<leader>D"] = "",
    ["<leader>n"] = "",

    ["<leader>ca"] = "",
    ["<leader>cc"] = "",
    ["<leader>cm"] = "",
    ["<leader>ch"] = "",

    ["<leader>ma"] = "",

    ["<leader>ph"] = "",
    ["<leader>rh"] = "",
    ["<leader>pt"] = "",

    ["<leader>fm"] = "",

    ["<leader>ra"] = "",
    ["<leader>rn"] = "",

    ["<leader>wa"] = "",
    ["<leader>wk"] = "",
    ["<leader>wK"] = "",
    ["<leader>wl"] = "",
    ["<leader>wr"] = "",
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader><leader>"] = {
      "<cmd> HopWord <CR>",
    },
    ["<leader>e"] = {
      "<cmd> :Telescope file_browser path=%:p:h select_buffer=true <CR>",
      "Explorer",
    },
    ["<leader>w"] = {
      function()
        vim.lsp.buf.format { async = false }
        vim.cmd "w"
      end,
      "Save buffer",
    },
    ["<leader>q"] = {
      "<cmd> q <CR>",
      "Close",
    },
  },
}

M.nvchad = {
  n = {
    ["<leader>Nh"] = { "<cmd> NvCheatsheet <CR>", "Mapping cheatsheet" },
    ["<leader>Nu"] = { "<cmd> NvChadUpdate <CR>", "Update" },
  },
}

M.dap = {
  n = {
    ["<leader>dt"] = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
    ["<leader>db"] = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
    ["<leader>dc"] = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
    ["<leader>dC"] = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
    ["<leader>dd"] = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
    ["<leader>dg"] = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
    ["<leader>di"] = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
    ["<leader>do"] = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
    ["<leader>du"] = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
    ["<leader>dp"] = { "<cmd>lua require'dap'.pause()<cr>", "Pause" },
    ["<leader>dr"] = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
    ["<leader>ds"] = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
    ["<leader>dq"] = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
    ["<leader>dU"] = { "<cmd>lua require'dapui'.toggle({reset=true})<cr>", "Toggle UI" },
  },
}

M.lspconfig = {
  n = {
    ["<leader>lD"] = {
      "<cmd> Telescope diagnostics <CR>",
      "Diagnostics",
    },
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "Formatting",
    },
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "Code action",
    },
    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "Signature help",
    },
    ["<leader>lc"] = {
      function()
        local ok, start = require("indent_blankline.utils").get_current_context(
          vim.g.indent_blankline_context_patterns,
          vim.g.indent_blankline_use_treesitter_scope
        )

        if ok then
          vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start, 0 })
          vim.cmd [[normal! _]]
        end
      end,
      "Jump to current context",
    },
  },
}

M.workspace = {
  n = {
    ["<leader>Wa"] = { "<cmd> WorkspacesAdd <CR>", "Add workspace" },
    ["<leader>Wr"] = { "<cmd> WorkspacesRemove <CR>", "Remove workspace" },
    ["<leader>Wo"] = { "<cmd> WorkspacesOpen <CR>", "Open workspace" },
    ["<leader>Wl"] = { "<cmd> WorkspacesList <CR>", "List workspace" },
  },
}

M.find = {
  n = {
    ["<leader>fn"] = { "<cmd> Navbuddy <CR>", "Navigation" },
  },
}

M.terminal = {
  n = {
    ["<leader>th"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "New horizontal term",
    },
    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "New vertical term",
    },
    ["<leader>tf"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  },
}

M.git = {
  n = {
    ["<leader>gg"] = {
      "<cmd> LazyGit <CR>",
    },
    ["<leader>gd"] = {
      "<cmd> DiffviewOpen <CR>",
    },
    ["<leader>gc"] = {
      "<cmd> DiffviewClose <CR>",
    },
    ["<leader>gh"] = {
      "<cmd> DiffviewFileHistory % <CR>",
      "DiffviewFileHistory current",
    },
    ["<leader>gH"] = {
      "<cmd> DiffviewFileHistory <CR>",
      "DiffviewFileHistory all",
    },
  },
}

return M
