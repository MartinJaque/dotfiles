return {
    'nvim-telescope/telescope.nvim',
    event = "VimEnter",
    version= '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'jmbuhr/telescope-zotero.nvim',
            dependencies = {
                { 'kkharji/sqlite.lua' },
            },
            config = function()
                local bib = require('zotero.bib')
                
                -- patch function to look for the .bib file to write
                -- in the same directory as the current open buffer
                local function locate_bib_in_current_dir()
                    local current_file = vim.api.nvim_buf_get_name(0)
                    local current_dir = vim.fn.fnamemodify(current_file, ':h')

                    local bib_file = current_dir .. '/references.bib'

                    if vim.fn.filereadable(bib_file) == 1 then
                        return bib_file
                    else
                        return nil
                    end
                end

                require("zotero").setup({
                    zotero_db_path = '/mnt/c/Users/Harley Lara/Zotero/zotero.sqlite',
                    better_bibtex_db_path = '/mnt/c/Users/Harley Lara/Zotero/better-bibtex.sqlite',
                    ft = {
                        tex = {
                            insert_key_formatter = function(citekey)
                                return '\\cite{' .. citekey .. '}'
                            end,
                            locate_bib = locate_bib_in_current_dir,
                        },
                        plaintex = {
                            insert_key_formatter = function(citekey)
                                return '\\cite{' .. citekey .. '}'
                            end,
                            locate_bib = locate_bib_in_current_dir,
                        },
                        default = {
                            insert_key_formatter = function(citekey)
                                return '@' .. citekey
                            end,
                            locate_bib = locate_bib_in_current_dir
                        },
                    }
                })
            end
        }
    },
    config = function()
        local telescope = require("telescope")

        telescope.setup{ 
            defaults = { 
                file_ignore_patterns = { 
                    "node_modules",
                    ".git"
                }
            }
        }

        telescope.load_extension("zotero")

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[f]ind [f]ile in the current directory and children'})

        vim.keymap.set('n', '<C-f>', builtin.current_buffer_fuzzy_find, { desc = 'Search into the current buffer'})

        vim.keymap.set('n', '<leader>hh', builtin.help_tags, { desc = '[h]elp [h]elp'})

        vim.keymap.set('n', '<leader>fz', telescope.extensions.zotero.zotero)

        local find_dotfiles = function()
            return builtin.find_files({
                prompt_title = "My Dotfiles",
                cwd = "~/dotfiles/",
                hidden = true
            })
        end

        vim.keymap.set('n', '<leader>fd', find_dotfiles, { desc = '[f]ind files intro my dotfiles directory'})

    end
}
