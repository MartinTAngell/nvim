return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				bash = { "beautysh" },
				cpp = { "clang-format" },
				css = { "prettier" },
				lua = { "stylua" },
				tex = { "tex-fmt" },
				html = { "prettier" },
				json = { "prettier" },
				typescript = { "prettier" },
				markdown = { "prettier" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>fh", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range" })
	end,
}
