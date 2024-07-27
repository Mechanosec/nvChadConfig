require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- Buffer tab
map("n", "<leader>bd", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- Telescope
map("n", "<leader>e", function()
  local telescope = require "telescope"

  local function telescope_buffer_dir()
    return vim.fn.expand "%:p:h"
  end

  telescope.extensions.file_browser.file_browser {
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = false,
    grouped = true,
    previewer = true,
    initial_mode = "normal",
    -- layout_config = { height = 40 },
  }
end, { desc = "File Browser" })

-- Debug
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Toggle Debug UI" })
map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })
map("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "Start" })
map("n", "<leader>dn", function()
  require("dap").step_over()
end, { desc = "Step Over" })

-- Disable mappings
local nomap = vim.keymap.del
nomap("n", "<leader>ma")
nomap("n", "<leader>x")
nomap("n", "<leader>cm")
nomap("n", "<leader>ch")
nomap("n", "<leader>pt")
-- nomap("n", "<leader>ra")
nomap("n", "<leader>rn")
