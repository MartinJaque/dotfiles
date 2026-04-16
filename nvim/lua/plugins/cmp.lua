
vim.pack.add({
	'https://github.com/hrsh7th/nvim-cmp',
	'https://github.com/hrsh7th/cmp-buffer',
    'https://github.com/hrsh7th/cmp-nvim-lsp',
    'https://github.com/hrsh7th/cmp-path',
})

local cmp = require'cmp'
cmp.setup({
	mapping = cmp.mapping.preset.insert({
                ['<C-k>'] = cmp.mapping.select_prev_item(),
                ['<C-j>'] = cmp.mapping.select_next_item(),
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{name = 'nvim_lsp'},
		{name = 'buffer'},
		{name = 'path'},
	})
})
