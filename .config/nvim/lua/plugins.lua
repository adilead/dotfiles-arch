local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'

Plug 'https://github.com/preservim/nerdtree' 
Plug 'startup-nvim/startup.nvim' 

Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tc50cal/vim-terminal' 
Plug 'https://github.com/preservim/tagbar' 
Plug 'vimwiki/vimwiki' 

Plug('luisiacc/gruvbox-baby', {branch = 'main'})

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdateSync'})
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'

Plug('nvim-telescope/telescope.nvim', { tag = '0.1.2' })
Plug 'nvim-telescope/telescope-live-grep-args.nvim'
Plug 'ThePrimeagen/harpoon'

Plug 'rmagatti/auto-session'
Plug 'rmagatti/session-lens'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'junegunn/goyo.vim'

Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'leoluz/nvim-dap-go'

Plug 'jpalardy/vim-slime'
Plug 'junegunn/goyo.vim'

vim.call('plug#end')
