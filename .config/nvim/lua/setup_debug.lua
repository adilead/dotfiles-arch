require('dapui').setup()
local dap = require('dap')

vim.keymap.set('n', '<F9>',  require"dap".continue, {})
vim.keymap.set('n', '<F8>',  require"dap".step_over, {})
vim.keymap.set('n', '<F7>',  require"dap".step_into, {})
vim.keymap.set('n', '<F6>',  require"dap".step_out, {})
vim.keymap.set('n', '<Leader>b',  require"dap".toggle_breakpoint, {})
-- vim.keymap.set('n', '<Leader>B',  function() require"dap".set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
-- nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
vim.keymap.set('n', '<Leader>dr',  require'dap'.repl.open, {})
vim.keymap.set('n', '<Leader>dl',  require'dap'.run_last, {})
vim.keymap.set('n', '<Leader>dw',  require'dap.ui.widgets'.sidebar(require'dap.ui.widgets'.frames).open, {})
vim.keymap.set('n', '<Leader>du',  require'dapui'.toggle, {})

-- Golang
require('dap-go').setup ()
-- {
  -- -- Additional dap configurations can be added.
  -- -- dap_configurations accepts a list of tables where each entry
  -- -- represents a dap configuration. For more details do:
  -- -- :help dap-configuration
  --   dap_configurations = {
  --       {
  --         -- Must be "go" or it will be ignored by the plugin
  --         type = "go",
  --         name = "Attach remote",
  --         mode = "remote",
  --         request = "attach",
  --       },

  --       {
  --           name = "Launch file",
  --           type = "go",
  --           request = "launch",
  --           program = function()
  --             return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  --           end,
  --           cwd = '${workspaceFolder}',
  --           stopOnEntry = true,
  --       },
  --   },
    
  --   delve = {
  --       -- the path to the executable dlv which will be used for debugging.
  --       -- by default, this is the "dlv" executable on your PATH.
  --       path = "dlv",
  --       -- time to wait for delve to initialize the debug session.
  --       -- default to 20 seconds
  --       initialize_timeout_sec = 20,
  --       -- a string that defines the port to start delve debugger.
  --       -- default to string "${port}" which instructs nvim-dap
  --       -- to start the process in a random available port
  --       port = "${port}",
  --       -- additional args to pass to dlv
  --       args = {},
  --       -- the build flags that are passed to delve.
  --       -- defaults to empty string, but can be used to provide flags
  --       -- such as "-tags=unit" to make sure the test suite is
  --       -- compiled during debugging, for example.
  --       -- passing build flags using args is ineffective, as those are
  --       -- ignored by delve in dap mode.
  --       build_flags = "",
  -- }

  --TODO delve
-- }

require('dap.ext.vscode').load_launchjs()
