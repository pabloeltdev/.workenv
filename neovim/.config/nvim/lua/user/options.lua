local vim = vim
local opt = vim.opt
opt.number = true -- Show line number
opt.relativenumber = true -- Line number are relative to the current line
opt.cursorline = true -- Enable highlighting of the current line
opt.showmode = false -- Dont show mode since we have a statusline
opt.smartindent = true -- Insert indents automatically
opt.tabstop = 2 -- Number of spaces that a tab character looks like
opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
opt.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Number of spaces inserted when indenting
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.termguicolors = true -- True color support
opt.confirm = true -- Ask for save before quit
opt.textwidth = 80 -- Max line width
opt.colorcolumn = "81" -- highligh column 80
-- opt.foldmethod = 'expr'
-- opt.foldexpr = "nvim_treesitter#foldexpr()"
