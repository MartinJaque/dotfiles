vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter', -- require treesitter-cli
    'https://github.com/nvim-treesitter/nvim-treesitter-context'
})

require('nvim-treesitter').setup({
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
    auto_install = true,
    ensure_installed = {
        'bash',
        'c',
        'cpp',
        'json',
        'html',
        'python',
        'cmake',
        'xml',
        'rust',
        'go',
        'markdown',
        'markdown_inline',
    },
})

