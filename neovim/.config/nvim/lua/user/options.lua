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
opt.foldmethod = 'expr'
opt.foldexpr = "nvim_treesitter#foldexpr()"
-- Setup vitual envs folder
vim.g.python3_host_prog=vim.fn.expand("~/.virtualenvs/bots/bin/python3")
vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>",
    { silent = true, desc = "Initialize the plugin" })
vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>",
    { silent = true, desc = "run operator selection" })
vim.keymap.set("n", "<localleader>rl", ":MoltenEvaluateLine<CR>",
    { silent = true, desc = "evaluate line" })
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>",
    { silent = true, desc = "re-evaluate cell" })
vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv",
    { silent = true, desc = "evaluate visual selection" })
