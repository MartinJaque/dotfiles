--[[
-- This file contains keymaps related with neovim itself
-- for plugins specific keymap I'm check the config function
-- in each plugin
--]]

local keymap = vim.keymap

-- open netrw
keymap.set("n", "<leader>e", vim.cmd.Ex)

-- prevents yank on delete "x"
-- keymap.set("n", "x", "_x")

-- move selection
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")

-- easy replace
keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- lua and plugins
keymap.set("n", "''", ":luafile %<CR>")

-- cool thing for lsp
-- Harley: check for this in the lsp config
-- keymap.set("n", "K", vim.lsp.buf.hover)
