return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "bashls",
        "clangd",
        "cmake",
        "cssls",
        "lua_ls",
        "texlab",
        "html",
        "jsonls",
        "ts_ls",
        "marksman",
        "glsl_analyzer",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "beautysh",
        "clang-format",
        "prettier",
        "stylua",
        "tex-fmt",
        "prettier",
        "cpplint",
        "vale",
        "eslint_d"
      }
    })
  end,
}
