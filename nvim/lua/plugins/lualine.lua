vim.pack.add({
    'https://github.com/nvim-lualine/lualine.nvim'
})

require('lualine').setup({
    options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '|', right = '|'},
    },
    sections = {
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_x = {'filetype'},
        lualine_y = {},
    },
})
