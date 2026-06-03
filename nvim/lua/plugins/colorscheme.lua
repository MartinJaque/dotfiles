
vim.pack.add({
    -- 'https://github.com/rebelot/kanagawa.nvim',
    {src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
})

-- require('kanagawa').setup({
--     transparent = true,
--
-- })
-- vim.cmd.colorscheme('kanagawa')
require('catppuccin').setup({
    flavour = "mocha",
    transparent_background = true,
})
vim.cmd.colorscheme('catppuccin')
