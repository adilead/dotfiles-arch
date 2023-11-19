local plugins = require("plugins")

vim.cmd([[colorscheme gruvbox-baby]])

-- general editor configuration
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true --use space instead of \t
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.mouse = 'a'
vim.opt.autoread = true

mapleader = ' '

-- key maps
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

-- fast loading and sourcing of init.vim
-- nmap("<Leader>v", ":e $MYVIMRC<CR>")
vim.g.mapleader = " "
nmap("<Leader>sv", ":luafile /home/adrian/.config/nvim/init.lua<CR>")

-- " open last closed file quickly
nmap("<Leader>p", ":e#<CR>")

-- NERDTree keybindings
nmap("<Leader>nf", ":NERDTreeFocus<CR>")
nmap("<Leader>nn", ":NERDTree<CR>")
nmap("<Leader>nt", ":NERDTreeToggle<CR>")

-- Telescope keybindings
nmap("<Leader>ff", "<cmd>Telescope find_files<cr>")
nmap("<Leader>fg", "<cmd>Telescope live_grep<cr>")
nmap("<Leader>fb", "<cmd>Telescope buffers<cr>")
nmap("<Leader>fh", "<cmd>Telescope help_tags<cr>")
nmap("<Leader>ss", "<cmd>lua require('session-lens').search_session()<cr>")

-- set root to path of current buffer
nmap("<Leader>cr", "<cmd>cd %:p:h<cr>")

-- " Escape terminal
-- :tnoremap <Esc> <C-\><C-n>

-- " Scrolling
nmap("<C-d>", "<C-d>zz")
nmap("<C-u>", "<C-u>zz")

-- " tab control
nmap("<leader>1", "1gt")
nmap("<leader>2", "2gt")
nmap("<leader>3", "3gt")
nmap("<leader>4", "4gt")
nmap("<leader>5", "5gt")
nmap("<leader>6", "6gt")
nmap("<leader>7", "7gt")
nmap("<leader>8", "8gt")
nmap("<leader>9", "9gt")
nmap("<leader>0", ":tablast<cr>")

-- nmap <F8> :TagbarToggle<CR>
-- 
-- :set completeopt-=preview " For No Previews


-- " configure debuggins in general
-- nnoremap <silent> <F9> <Cmd>lua require'dap'.continue()<CR>
--     nnoremap <silent> <F8> <Cmd>lua require'dap'.step_over()<CR>
--     nnoremap <silent> <F7> <Cmd>lua require'dap'.step_into()<CR>
--     nnoremap <silent> <F6> <Cmd>lua require'dap'.step_out()<CR>
--     nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
--     nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
--     nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
--     nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
--     nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
--     nnoremap <silent> <Leader>dw <Cmd>lua require'dap.ui.widgets'.sidebar(require'dap.ui.widgets'.frames).open()<CR>
--     nnoremap <silent> <Leader>du <Cmd>lua require'dapui'.toggle()<CR>

-- " No autosaving by zig plugin
-- let g:zig_fmt_autosave = 0
-- 
-- " New line when setting brackets
-- inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"

require("setup_plugins")
require("setup_lsp")
require("setup_debug")
