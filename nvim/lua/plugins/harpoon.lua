return {
    'ThePrimeagen/harpoon',
    config = function()
        local harpoon_mark = require("harpoon.mark")
        local harpoon_ui = require("harpoon.ui")

        local wrap = function(func, ...)
            local args = {...}
            return function()
                func(unpack(args))
            end
        end

        vim.keymap.set('n', '<leader>ha', harpoon_mark.add_file)
        vim.keymap.set('n', '<leader>hl', harpoon_ui.toggle_quick_menu)
        vim.keymap.set('n', '<leader>1', wrap(harpoon_ui.nav_file, 1))
        vim.keymap.set('n', '<leader>2', wrap(harpoon_ui.nav_file, 2))
        vim.keymap.set('n', '<leader>3', wrap(harpoon_ui.nav_file, 3))
        vim.keymap.set('n', '<leader>4', wrap(harpoon_ui.nav_file, 4))
        vim.keymap.set('n', '<leader>5', wrap(harpoon_ui.nav_file, 5))
        vim.keymap.set('n', '<leader>6', wrap(harpoon_ui.nav_file, 6))
    end
}
