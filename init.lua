local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
 
Plug('tpope/vim-sensible')
Plug('tpope/vim-fugitive')
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('ellisonleao/gruvbox.nvim')
Plug('kyazdani42/nvim-tree.lua')
Plug('kyazdani42/nvim-web-devicons')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope-fzf-native.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('dpretet/vim-leader-mapper')
Plug('folke/which-key.nvim')

vim.call('plug#end')

-- home=os.getenv("HOME")
-- package.path = home .. "/.config/nvim/?.lua;" .. package.path

-- Common config
vim.cmd('se nu')
vim.cmd.colorscheme('gruvbox')
vim.cmd('let g:airline_powerline_fonts = 1')
vim.opt.grepprg = "rg --no-ignore --vimgrep --smart-case"
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.tabstop = 2      -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 2   -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.softtabstop = 2  -- Number of spaces that a <Tab> counts for while performing editing operations

-- Complex plugin configs
require "vimtree"

require "keymap"
