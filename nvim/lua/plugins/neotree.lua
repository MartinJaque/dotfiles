vim.pack.add({
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  "https://github.com/MunifTanjim/nui.nvim",
})

require("neo-tree").setup({
  filesystem = {
    hijack_netrw_behavior = "disabled", 
  },
  window = {
      mappings = {
          ["<C-b>"] = "close_window",
      },
  },
})
