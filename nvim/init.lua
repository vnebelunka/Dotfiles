require "config.lazy"

local opt = vim.opt
opt.relativenumber = true
opt.number = true

vim.opt.laststatus = 3

-- tabs & indentation
opt.tabstop = 4 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 4 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
