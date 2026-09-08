vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
})
local mason = require("mason")
mason.setup()

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  vim.notify("mason-lspconfig is not installed", vim.log.levels.WARN)
  return
end

mason_lspconfig.setup({
  ensure_installed = {
    "basedpyright",
    "ruff",
    "rust_analyzer",
    "gopls",
    "clangd",
    "cmake",
    "lemminx",
  }
})

vim.lsp.config("clangd", {
  cmd = { "clangd", "--header-insertion=never"},
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" }
})

vim.lsp.config("lemminx", {
  filetypes = { "xml", "xsd", "xsl", "xslt", "svg", "urdf", "xacro" }
})

vim.lsp.config("*", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

vim.lsp.enable({
  "basedpyright",
  "ruff",
  "rust_analyzer",
  "gopls",
  "clangd",
  "cmake",
  "lemminx",
})

-- vim.lsp.inlay_hint.enable(true)

