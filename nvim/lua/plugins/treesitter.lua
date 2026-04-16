vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter', -- require treesitter-cli
    'https://github.com/nvim-treesitter/nvim-treesitter-context'
})

require('nvim-treesitter').setup({
    highlight = {
        enable = true,
        disable = { "markdown" },
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
    ensure_installed = {
        'bash',
        'c',
        'cpp',
        'tsx',
        'lua',
        'json',
        'css',
        'html',
        'python',
        'javascript',
        'typescript',
        'astro',
        'markdown',
        'markdown_inline',
        'cmake',
        'xml',
        'vim', -- to remove the default parser and fix errors, https://www.reddit.com/r/neovim/comments/zu9fdc/comment/j1jfzz6/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_but
    },
    auto_install = true
})
