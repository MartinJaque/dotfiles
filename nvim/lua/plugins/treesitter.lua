return {
    "nvim-treesitter/nvim-treesitter",
    event = "InsertEnter",
    dependencies = {
        'nvim-treesitter/nvim-treesitter-context',
    },
    config = function()
        local opts = {
            highlight = {
                -- `false` will disable the whole extension
                enable = true,
                -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
                -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
                -- the name of the parser)
                -- list of language that will be disabled

                -- Harley's note: disabled markdown to use the default
                -- highlighting wich is way better then TS mardown
                disable = {"markdown"},
                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
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
                'vim', -- to remove the default parser and fix errors, https://www.reddit.com/r/neovim/comments/zu9fdc/comment/j1jfzz6/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
            },
            auto_install = true
        }



        require('nvim-treesitter.configs').setup(opts)
    end
}
