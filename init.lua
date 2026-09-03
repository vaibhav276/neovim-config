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
Plug('kdheepak/lazygit.nvim')
Plug('folke/zen-mode.nvim')
Plug('swaits/universal-clipboard.nvim')
Plug('airblade/vim-gitgutter')
Plug('tpope/vim-dadbod')
Plug('kristijanhusak/vim-dadbod-ui')
Plug('EdenEast/nightfox.nvim')

vim.call('plug#end')

-- Common config
vim.cmd('se nu')
vim.opt.termguicolors = true
vim.cmd('let g:airline_powerline_fonts = 1')
vim.opt.grepprg = "rg --no-ignore --vimgrep --smart-case"
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.tabstop = 3      -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 3   -- Number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.softtabstop = 3  -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.clipboard = "unnamedplus"

--- Custom commands
vim.api.nvim_create_user_command('BufOnly', function()
  local current_buf = vim.api.nvim_get_current_buf()
  local buffers = vim.api.nvim_list_bufs()

  for _, buf in ipairs(buffers) do
    if buf ~= current_buf and vim.api.nvim_buf_is_valid(buf) and vim.bo[buf].buflisted then
      vim.api.nvim_buf_delete(buf, { force = false })
    end
  end
end, {})

-- Complex plugin configs
require "vimtree"
require "keymap"
