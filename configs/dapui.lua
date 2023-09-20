local dap, dapui = require "dap", require "dapui"

dapui.setup {
  layouts = {
    {
      elements = {
        -- Elements can be strings or table with id and size keys.
        { id = "scopes", size = 0.7 },
        { id = "breakpoints", size = 0.3 },
      },
      size = 85,
      position = "right",
    },
  },
}
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
