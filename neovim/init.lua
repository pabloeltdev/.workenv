local vim = vim
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- luarocks packeges support
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

require "user.options"
require "user.plugins"
require "user.autocmds"

