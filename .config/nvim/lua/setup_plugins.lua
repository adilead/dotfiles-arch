-- startup-nvim -------------------------------------------------------------------------------------------------
require("startup").setup({theme = "dashboard"})

-- indentation behavior ------------------------------------------------------------------------------------------
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	command = "setlocal shiftwidth=2 tabstop=2"
})

-- session management --------------------------------------------------------------------------------------------
require('auto-session').setup({
    auto_session_enable_last_session = false,
    auto_restore_enabled = false,
})

-- telescope stuff -----------------------------------------------------------------------------------------------
require('telescope').setup{ 
    file_ignore_patterns = {"./venv/*", "venv", "venv/*","^venv/*","*venv/*"}, 
}

require("telescope").load_extension("session-lens")
require('session-lens').setup {
   path_display = {'shorten'},
   theme_conf = {winblend = 0 },
}


vim.keymap.set('n', 'gl', require"telescope.builtin".live_grep, {})
vim.keymap.set('n', 'gr', require"telescope.builtin".lsp_references, {})
vim.keymap.set('n', 'gi', require"telescope.builtin".lsp_implementations, {})
vim.keymap.set('n', 'gd', require"telescope.builtin".lsp_definitions, {})
vim.keymap.set('n', 'gw', require"telescope.builtin".lsp_workspace_symbols, {})

-- harpoon --------------------------------------------------------------------------------------------------------
vim.keymap.set('n', '<Leader>hh', require("harpoon.ui").toggle_quick_menu,{})
vim.keymap.set('n', '<Leader>ha', require("harpoon.mark").add_file,{})
vim.keymap.set('n', '<Leader>hn', require("harpoon.ui").nav_next,{})
vim.keymap.set('n', '<Leader>hp', require("harpoon.ui").nav_prev,{})
vim.keymap.set('n', '<Leader>h1', function() require("harpoon.ui").nav_file(1) end)
vim.keymap.set('n', '<Leader>h2', function() require("harpoon.ui").nav_file(2) end)
vim.keymap.set('n', '<Leader>h3', function() require("harpoon.ui").nav_file(3) end)
vim.keymap.set('n', '<Leader>h4', function() require("harpoon.ui").nav_file(4) end)
vim.keymap.set('n', '<Leader>h5', function() require("harpoon.ui").nav_file(5) end)

-- tmux functionality
vim.keymap.set('n', '<Leader>t', function() require("harpoon.tmux").gotoTerminal(1) end)

-- nvim-treesitter ------------------------------------------------------------------------------------------------
require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "lua", "vim", "cpp", "python", "zig"},
    highlight = {
        -- `false` will disable the whole extension
        enable = true,
    },
    indent = {
        enable = false,
        disable = {"python",}
    }
}

-- auto pairs -----------------------------------------------------------------------------------------------------
require("nvim-autopairs").setup {}
local npairs = require("nvim-autopairs")
local Rule = require('nvim-autopairs.rule')

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        python = {'string'},-- it will not add a pair on that treesitter node
    }
})

local ts_conds = require('nvim-autopairs.ts-conds')

-- press % => %% only while inside a comment or string
npairs.add_rules({
  Rule("%", "%", "lua")
    :with_pair(ts_conds.is_ts_node({'string','comment'})),
  Rule("$", "$", "lua")
    :with_pair(ts_conds.is_not_ts_node({'function'})),
})

-- vim-slime -------------------------------------------------------------------------------------------------------
vim.g.slime_target = "tmux"
vim.g.slime_bracketed_paste = 1
