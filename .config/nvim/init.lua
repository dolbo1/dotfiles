require 'core.options'
require 'core.keymaps'

-- Lazy setup
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Load all additional plugins
require('lazy').setup {
  require 'colors.gruvbox-material', -- Set the colortheme
  require 'plugins.neotree', -- space + e to open a file tree
  require 'plugins.bufferline', -- Sets up the top tab line
  require 'plugins.lualine', -- Sets up the status bar at the bottom
  require 'plugins.treesitter', -- Provides syntax highlighting
  require 'plugins.telescope', -- Provides fuzzy finder with ctrl + s + f
  require 'plugins.nvim-java', -- Java LSP setup
  require 'plugins.lspconfig', -- Language server protocol - autosuggestions, autocopletion, etc.
  require 'plugins.autocompletion', -- Autosuggestions for code
  --require 'plugins.autoformatting',
  --require 'plugins.alpha', -- Greeter screen
  require 'plugins.indent-blankline', -- Carry over indents into new lines
  require 'plugins.misc', -- Additional plugins
}
