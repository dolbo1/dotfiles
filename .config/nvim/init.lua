require('config.options')
require('config.keymaps')

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  require('colors.gruvbox-material'),
  require('plugins.alpha'), -- Greeting screen
  require('plugins.autocomplete'), -- Nvim CMP
  require('plugins.autoformat'),
  require('plugins.autopairs'),
  require('plugins.autotag'),
  require('plugins.bufferline'), -- Top buffer bar
  require('plugins.colorizer'), -- Highlight colors
  require('plugins.guess-indent'), -- Auto-adjust indentation in files
  require('plugins.indent-blankline'), -- Add line indicators for indentation
  require('plugins.lazydev'), -- LSP Config for Neovim config files
  require('plugins.lsp'), -- LSP setup
  require('plugins.lualine'), -- Bottom status bar
  require('plugins.mini'), -- Working with inside textobjects
  require('plugins.neotree'), -- File tree (leader + e)
  require('plugins.telescope'), -- Fuzzy finder
  require('plugins.todo-comments'), -- Highlight "NOTE" and "FIX" comments
  require('plugins.treesitter'), -- Syntax highlighting and navigation
  require('plugins.which-key'), -- Popup detailiing keyboard shortcuts
})
