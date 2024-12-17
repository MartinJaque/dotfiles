-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'
vim.opt.showmode = false -- the mode is already in the status line

-- vim.opt.clipboard = 'unnamedplus'
-- This disable clipboard,
-- for some reason it take long time to start
-- and I not using it
-- https://github.com/neovim/neovim/issues/14280#issuecomment-812854079
vim.cmd("let g:loaded_clipboard_provider=1")

vim.opt.breakindent = true
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', eol = '↵'}

vim.g.netrw_banner = 0
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = '80'
vim.opt.wrap = false -- No Wrap lines

-- Tab stuff
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Change indexing for some filetypes
vim.api.nvim_create_augroup('setIndent', { clear = true })
vim.api.nvim_create_autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'xml', 'html', 'xhtml', "yml", "json", "css", "javascript", "typescript", "markdown", "mdx", "urdf"},
  command = 'setlocal shiftwidth=2 tabstop=2'
})

-- Set up custom filetypes
vim.filetype.add {
    extension = {
        -- tex = "tex", -- Change file `.tex` from `plaintext` to just `tex`
        astro = "astro",
        mdx = "markdown.mdx",
        urdf = "xml",
        xacro = "xml"
    },
}
