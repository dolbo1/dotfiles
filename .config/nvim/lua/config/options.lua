vim.g.have_nerd_font = true

vim.o.number = true -- Enable numbered lines
vim.o.relativenumber = true -- Number lines are relative to current line
vim.o.termguicolors = true -- Set gui colors to sync with terminal
vim.o.autoindent = true -- Copy indent from previous line
vim.o.mouse = '' -- Disable mouse mode
vim.o.wrap = false -- Do not wrap lines by default (leader + lw to enable)
vim.o.linebreak = true -- Do not split lines when wrapping
vim.o.showmode = false -- Do not show --INSERT-- when in insert mode, etc.
vim.o.shiftwidth = 4 -- Number of spaces inserted for each indentation
vim.o.tabstop = 4 -- Insert n spaces for a tab
vim.o.softtabstop = 4 -- Number of spaces that a tab counts for
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.clipboard = 'unnamedplus' -- Sync vim clipboard with system clipboard
vim.o.breakindent = true -- Every wrapped line will continue visually indented
vim.o.undofile = true -- Undo changes are stored between sessions
vim.o.ignorecase = true -- Search is case insensitive unless /C or capital in search
vim.o.smartcase = true -- Goes with ignore case
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250 -- Shorten update time
-- vim.o.whichwrap = 'bs<>[]hl' -- which "horizontal" keys are allowed to travel to prev/next line
vim.o.splitright = true -- Horizontal splits will always happen to the right
vim.o.splitbelow = true -- Vertical splits will always happen on the bottom
vim.o.list = true -- Shows whitespace characters
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } -- Modifies displayed whitespace characters
vim.o.inccommand = 'split'
-- vim.o.cursorline = true -- Current line is highlighted entirely
vim.o.scrolloff = 10 -- N lines should be shown when scrolling
vim.o.confirm = true -- Present a confirmation window when exiting a non-saved buffer
vim.o.showtabline = 2
