vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- This is set in conig/lazy.lua
--vim.g.mapleader = " "

--vim.opt.rtp:prepend(lazypath)

require("config.lazy")

