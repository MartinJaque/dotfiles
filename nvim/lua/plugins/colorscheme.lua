return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                colors = {
                    palette = {
                        fujiWhite    = "#C5C9C5",
                        fujiGray     = "#7A8382",
                        sumiInk1     = "#181616",
                        sumiInk2     = "#12120F",
                        samuraiRed   = "#E46876",
                        peachRed     = "#FF5D62",
                        autumnYellow = "#E6C384",
                        crystalBlue  = "#8BA4B0",
                        oniViolet    = "#A292A3",
                        springGreen  = "#8A9A7B",
                        waveAqua2    = "#8EA4A2",
                        surimiOrange = "#FF9E3B",
                    },
                },
                theme = "dragon",
                compile = false,
                overrides = function(colors)
                    local p = colors.palette
                    return {
                        -- === Sintaxis principal ===
                        Keyword               = { fg = p.samuraiRed, },
                        Statement             = { fg = p.samuraiRed, },
                        Conditional           = { fg = p.samuraiRed },
                        Repeat                = { fg = p.samuraiRed },
                        Exception             = { fg = p.samuraiRed },
                        Operator              = { fg = "#B6927B" },

                        -- === Strings y escapes ===
                        String                = { fg = p.springGreen },
                        Character             = { fg = p.peachRed },
                        SpecialChar           = { fg = p.peachRed },
                        Number                = { fg = p.oniViolet },
                        Constant              = { fg = "#B98D7B" },
                        Boolean               = { fg = p.surimiOrange, bold = false },

                        -- === Funciones, tipos, variables ===
                        Function              = { fg = p.crystalBlue, italic = true },
                        Type                  = { fg = p.waveAqua2 },
                        Identifier            = { fg = p.fujiWhite },
                        Field                 = { fg = p.fujiWhite },
                        Parameter             = { fg = "#9E9B93", italic = true },

                        -- === Comentarios ===
                        Comment               = { fg = p.fujiGray, italic = true },
                        Todo                  = { fg = p.surimiOrange, bold = true },

                        -- === Diagnósticos ===
                        DiagnosticError       = { fg = p.samuraiRed },
                        DiagnosticWarn        = { fg = p.surimiOrange },
                        DiagnosticInfo        = { fg = p.crystalBlue },
                        DiagnosticHint        = { fg = p.waveAqua2 },

                        -- === Gitsigns / Diff ===
                        GitSignsAdd           = { fg = p.springGreen },
                        GitSignsChange        = { fg = p.crystalBlue },
                        GitSignsDelete        = { fg = p.samuraiRed },
                        DiffDelete            = { fg = p.samuraiRed },

                        -- === self y atributos (estilo Zed)
                        ["@variable.builtin"] = { fg = p.oniViolet, italic = true }, -- self
                        ["@variable.member"]  = { fg = p.autumnYellow },             -- hola en self.hola
                        ["@field"]            = { fg = p.autumnYellow },
                        ["@property"]         = { fg = p.autumnYellow },
                        ["@constant.builtin"] = { fg = p.autumnYellow },
                        -- ["@number"]           = { fg = p.autumnYellow },
                        -- ["@boolean"]          = { fg = p.autumnYellow },
                        ["@keyword.import"]   = { fg = p.samuraiRed, bold = false },
                        ["@include"]          = { fg = p.samuraiRed, bold = false },
                    }
                end,
            })
            require("kanagawa").load("dragon")
            vim.cmd.colorscheme('kanagawa-dragon')
        end
    },
    -- {
    --     'projekt0n/github-nvim-theme',
    --     lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    --     priority = 1000, -- make sure to load this before all the other start plugins
    --     config = function()
    --         vim.cmd.colorscheme "github_dark_high_contrast"
    --     end,
    -- },
    {
        "Gentleman-Programming/gentleman-kanagawa-blur",
        lazy = true,
        -- priority = 1000,
        config = function()
            require("gentleman_kanagawa_blur").setup({
                variant = "sakura_night_blur",
                -- variant = "blur",
            })

            -- vim.cmd.colorscheme('gentleman-kanagawa-blur')
        end,
    },

    -- {
    --     "navarasu/onedark.nvim",
    --     -- priority = 1000, -- make sure to load this before all the other start plugins
    --     lazy = true,
    --     config = function()
    --         require('onedark').setup {
    --             style = 'warmer'
    --         }
    --         -- Enable theme
    --         -- require('onedark').load()
    --     end
    -- },
    -- {
    --     'jesseleite/nvim-noirbuddy',
    --     dependencies = {
    --         { 'tjdevries/colorbuddy.nvim' }
    --     },
    --     lazy = false,
    --     priority = 1000,
    --     opts = {
    --         -- All of your `setup(opts)` will go here
    --     },
    --     config = function()
    --         require('noirbuddy').setup {
    --             colors = {
    --                 primary = '#79C0FF',
    --                 background = "#000000"
    --             },
    --         }
    --     end
    -- },
    {
        "olimorris/onedarkpro.nvim",
        lazy = false,
        priority = 1000, -- Ensure it loads first
        config = function()
            require("onedarkpro").setup({
                colors = {
                    bg = "#16191D"
                }
            })
            -- vim.cmd.colorscheme('onedark')
        end
    },
}
