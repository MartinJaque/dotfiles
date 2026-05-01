-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'
vim.opt.showmode = false -- the mode is already in the status line

vim.opt.clipboard = 'unnamedplus'

vim.opt.breakindent = true
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', eol = '↵' }

vim.g.netrw_banner = 0
vim.g.netrw_lifestyle = 3
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = '80'
vim.opt.wrap = true -- No Wrap lines

-- Tab stuff
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- color status line
vim.cmd(":hi statusline guibg=NONE")

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- diagnostic inline text
vim.diagnostic.config({ virtual_text = false })

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
    pattern = { 'xml', 'html', 'xhtml', "yml", "json", "css", "javascript", "typescript", "markdown", "mdx", "urdf" },
    command = 'setlocal shiftwidth=2 tabstop=2'
})

-- Set up custom filetypes
vim.filetype.add {
    extension = {
        urdf = "xml",
        xacro = "xml"
    },
}
