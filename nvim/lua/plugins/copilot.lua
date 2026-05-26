vim.pack.add({
    'https://github.com/zbirenbaum/copilot.lua',
})

require("copilot").setup({
  suggestion = {
    enabled = true,
    auto_trigger = true,
    hide_during_completion = true, -- <-- clave, se oculta cuando cmp está activo
    keymap = {
      accept = "<M-l>",  -- cambia Tab a Alt+L para no chocar con cmp
    },
  },
  panel = { enabled = false },
})

