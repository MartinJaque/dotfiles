return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        dependencies = {
            'windwp/nvim-ts-autotag',
        },
        opts = {
            disable_filetype = { "TelescopePrompt" , "vim" },
        }
    },
    {
        "windwp/nvim-ts-autotag",
        opts = {}
    }
}
