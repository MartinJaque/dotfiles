local keymap = vim.keymap

-- move selection
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")

-- easy replace
keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Format with lsp
keymap.set('n', '<leader>lf', vim.lsp.buf.format)

-- clear highlight when search words
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap.set('n', '<leader>f', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        local clients = vim.lsp.get_clients({ bufnr = args.buf })
        if next(clients) ~= nil then
            vim.lsp.buf.format({ 
                bufnr = args.buf,
                async = false
            })
        end
    end,
})

-- Telescope keymaps
-- local builtin = require('telescope.builtin')

-- keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[f]ind [f]ile in the current directory and children'})
-- keymap.set('n', '<C-f>', builtin.current_buffer_fuzzy_find, { desc = 'Search into the current buffer'})
-- keymap.set('n', '<leader>hh', builtin.help_tags, { desc = '[h]elp [h]elp'})

keymap.set('n', '<leader>ff', require('fzf-lua').files, { desc = '[f]ind [f]ile in the current directory and children'})
keymap.set('n', '<C-f>', require('fzf-lua').live_grep , { desc = 'Search into the current buffer'})

-- Harpoon keymaps
local harpoon = require("harpoon")

harpoon:setup()

keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

keymap.set("n", "<A-1>", function() harpoon:list():select(1) end)
keymap.set("n", "<A-2>", function() harpoon:list():select(2) end)
keymap.set("n", "<A-3>", function() harpoon:list():select(3) end)
keymap.set("n", "<A-4>", function() harpoon:list():select(4) end)
keymap.set("n", "<A-5>", function() harpoon:list():select(5) end)
keymap.set("n", "<A-6>", function() harpoon:list():select(6) end)

-- Neotree
keymap.set("n", "<C-b>", "<cmd>Neotree toggle right<CR>")

-- MarkdownPreview
keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", { desc = "Markdown: Start preview" })
keymap.set("n", "<leader>mps", "<cmd>MarkdownPreviewStop<cr>", { desc = "Markdown: Stop preview" })
keymap.set("n", "<leader>mpr", "<cmd>MarkdownPreviewRefresh<cr>", { desc = "Markdown: Refresh preview" })

-- Lazygit
keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "Launch lazygit in nvim" })

-- Oil
keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
