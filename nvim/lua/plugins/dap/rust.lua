local dap = require('dap')
dap.adapters.codelldb = {
  type = 'server',
  port = '${port}',
  executable = {
    command = os.getenv('HOME') .. '/.local/share/nvim/mason/bin/codelldb',
    args = { '--port', '${port}' },
  },
}

dap.configurations.rust = {
  {
    name = 'Launch file',
    type = 'codelldb',
    request = 'launch',
    cargo = {
      args = { 'test', '--no-run', '--lib' },
    },
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}
