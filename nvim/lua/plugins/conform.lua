return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            python = { "ruff_format" },
            cpp = { "clang-format" },
            c = { "clang-format" },
            rust = { "rustfmt" },
            go = { "gofmt" },
            cmake = { "gersemi" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },

    },
}
