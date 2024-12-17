return {
    "neovim/nvim-lspconfig",
    -- event = "InsertEnter",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()

        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('harley-lsp-attach', { clear = true }),
            callback = function(event)
                local builtin = require('telescope.builtin')

                local map = function(keys, func, desc)
                    vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
                end

                map('gd', builtin.lsp_definitions, '[G]oto [D]efinition')
                map('gr', builtin.lsp_references, '[G]oto [R]eferences')
                map('gI', builtin.lsp_implementations, '[G]oto [I]mplementation')
                map('<leader>D', builtin.lsp_type_definitions, 'Type [D]efinition')
                map('<leader>ds', builtin.lsp_document_symbols, '[D]ocument [S]ymbols')
                map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
                map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
                map('K', vim.lsp.buf.hover, 'Hover Documentation')
                map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
            end
        })

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

        local servers = {
            tsserver = {},

            pyright = {},

            tailwindcss = {},

            astro = {},

            gopls = {},

            clangd = {
                cmd = { "clangd", "--header-insertion=never"},
                filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" }
            },

            cmake = {},

            texlab = {},

            lemminx = {
                filetypes = { "xml", "xsd", "xsl", "xslt", "svg", "urdf", "xacro" }
            },

            lua_ls = {
                cmd = { "/home/" .. vim.env.USER .. "/tooling/sumneko/bin/lua-language-server" },
                settings = {
                    Lua = {
                        runtime = { version = 'LuaJIT' },
                        workspace = {
                            checkThirdParty = false,
                            -- Tells lua_ls where to find all the Lua files that you have loaded
                            -- for your neovim configuration.
                            library = {
                                '${3rd}/luv/library',
                                unpack(vim.api.nvim_get_runtime_file('', true)),
                            },
                            -- If lua_ls is really slow on your computer, you can try this instead:

                            -- library = { vim.env.VIMRUNTIME },
                        },
                        completion = {
                            callSnippet = 'Replace',
                        },
                    }
                }
            }

        }

        --------------------------------------------------[[
        -- Mason
        --------------------------------------------------]]
        require('mason').setup {
            install_root_dir = os.getenv("HOME") .. "/tooling/mason"
        }

        local ensure_installed = vim.tbl_keys(servers or {})
        require('mason-tool-installer').setup { ensure_installed = ensure_installed }

        require('mason-lspconfig').setup {
            handlers = {
                function(server_name)
                    local server = servers[server_name] or {}

                    -- This handles overriding only values explicitly passed

                    -- by the server configuration above. Useful when disabling
                    -- certain features of an LSP (for example, turning off formatting for tsserver)
                    server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
                    require('lspconfig')[server_name].setup(server)

                end,
            },
        }

    end
}
