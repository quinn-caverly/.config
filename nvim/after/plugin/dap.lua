local dap = require('dap')
local port = 13000

dap.adapters.codelldb = {
  type = 'server',
  port = port,
  executable = {
    command =  os.getenv('HOME') .. '/Desktop/codelldb-x86_64-linux/extension/adapter/codelldb',
    args = {"--port", port},
  }
}

dap.configurations.c = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
   end,
   args = {"-w", "traces/simple-input>my-output"},
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
}
