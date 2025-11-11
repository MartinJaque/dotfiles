--[[
Hey Harley from the future, here is Harley from the past, JUST a reminder:
    This file should only list plugins that do not require configuration,
    or just a minimal configuration
--]]
return {
    -- vimtex
    -- {
    --   "lervag/vimtex",
    --   lazy = false,     -- we don't want to lazy load VimTeX
    --   -- tag = "v2.15", -- uncomment to pin to a specific release
    --   init = function()
    --     -- VimTeX configuration goes here, e.g.
    --     vim.g.vimtex_view_method = "zathura"
    --   end
    -- },

    -- install without yarn or npm
    -- {
    --     "iamcco/markdown-preview.nvim",
    --     cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    --     ft = { "markdown" },
    --     build = function() vim.fn["mkdp#util#install"]() end,
    -- },
    --
    -- -- markdown tables
    -- {
    --     'Kicamon/markdown-table-mode.nvim',
    --     config = function()
    --         require('markdown-table-mode').setup()
    --     end
    -- }
}
