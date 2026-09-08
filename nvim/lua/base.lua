-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'
vim.opt.showmode = false -- the mode is already in the status line

vim.opt.clipboard = 'unnamedplus'
vim.keymap.set("x", "p", '"_dP')
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', eol = '↵' }

-- Nuevo
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.sidescrolloff = 8
vim.opt.splitkeep = "screen"
vim.opt.incsearch = true
vim.opt.updatetime = 200
vim.opt.timeoutlen = 400
vim.opt.inccommand = "split"

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = '80'
vim.opt.wrap = true

-- Tab stuff
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Diagnostics
vim.diagnostic.config({
    signs = true,
})

vim.diagnostic.config({
  signs = true,
  underline = true,
  virtual_text = { current_line = true },
})

-- color status line
vim.cmd(":hi statusline guibg=NONE")

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

-- -- Change indexing for some filetypes
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("setIndent", { clear = true }),
  pattern = {
    "xml","html","xhtml","yaml","json","jsonc","css","javascript","typescript",
    "markdown","markdown.mdx","urdf","lua","cpp",
  },
  callback = function()
    vim.opt_local.shiftwidth  = 2
    vim.opt_local.tabstop     = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- Set up custom filetypes
vim.filetype.add {
    extension = {
        urdf = "xml",
        xacro = "xml",
        sdf = "xml",
    },
}
