-- Syntax colours
vim.cmd('syntax on')

vim.opt.compatible = false            -- disable compatibility with old-time vi
vim.opt.showmatch = true              -- show matching parentheses
vim.opt.ignorecase = true             -- case insensitive search
vim.opt.mouse = 'v'                   -- enable mouse support for middle-click pasting
vim.opt.hlsearch = true               -- highlight search matches
vim.opt.incsearch = true              -- enable incremental search
vim.opt.tabstop = 4                   -- set tab width to 4 spaces
vim.opt.softtabstop = 4               -- use multiple spaces as tab for <BS>
vim.opt.expandtab = true              -- convert tabs to spaces
vim.opt.shiftwidth = 4                -- indentation width
vim.opt.autoindent = true             -- automatically indent new lines
vim.opt.number = true                 -- display line numbers
vim.opt.wildmode = { 'longest', 'list' } -- enable bash-like tab completion
vim.opt.colorcolumn = '100'           -- 100-column indicator
vim.cmd('filetype plugin indent on')  -- enable filetype-specific plugins and indentation

-- Replace <ESC> with 'jk' and 'kj'
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true, silent = true })

-- Packer setup
return require('packer').startup(function(use)  -- Pass `use` explicitly
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'doums/darcula'
  vim.cmd('colorscheme darcula')
  -- Add more plugins here
end)

