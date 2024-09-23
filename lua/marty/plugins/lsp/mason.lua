return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
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
			-- list of servers for mason to install
			ensure_installed = {
				"bashls", -- LSP for Bash
				"clangd", -- LSP for C and C++
				"cmake", -- LSP for CMake
				"cssls", -- LSP for CSS
				"html", -- LSP for HTML
				"jsonls", -- LSP for JSON
				"jdtls", -- LSP for Java
				"ts_ls", -- LSP for Javascript, Typescript, and their React counterparts
				"texlab", -- LSP for LaTeX
				"lua_ls", -- LSP for Lua
				"marksman", -- LSP for Markdown
				"pyright", -- LSP for Python
				"sqlls", -- LSP for SQL
				"tailwindcss", -- LSP for Tailwind
				"eslint", -- LSP for eslint
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		mason_tool_installer.setup({
			ensure_installed = {
				-- Formatters
				"clang-format", -- Formatter for C and C++
				"prettierd", -- Formatter for Prettier
				"latexindent", -- Formtter for LaTeX
				"stylua", -- Formatter for Lua
				"black", -- Formatter for Python
				-- Linters
				"cmakelint", -- Linter for CMake
				"cpplint", -- Linter for C and C++
				"eslint", -- Linter for eslint
				"pylint", -- Linter for Python
				-- The linter for LaTeX didn't work. Sorry James
			},
		})
	end,
}
