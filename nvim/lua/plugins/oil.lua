vim.pack.add({
    'https://github.com/stevearc/oil.nvim',
})

require('oil').setup({
    skip_confirm_for_simple_edits = true,
})
