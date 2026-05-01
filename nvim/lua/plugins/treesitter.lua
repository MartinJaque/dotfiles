vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter', -- require treesitter-cli
    'https://github.com/nvim-treesitter/nvim-treesitter-context'
})

local ensure_installed = {
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
    }

require('nvim-treesitter').install(ensure_installed)

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 
        'sh', 'bash', 'c', 'cpp', 'json', 'html', 'python', 'cmake', 'xml', 'rust' , 'go'
    },
    callback = function()
        vim.treesitter.start()

        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
