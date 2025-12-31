return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
  branch = "master",

	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
				disable = { "latex" },
			},

			indent = {
				enable = true,
			},

			ensure_installed = {
				"bash",
				"c",
				"cmake",
				"cpp",
				"css",
				"gitignore",
				"glsl",
				"html",
				"http",
				"java",
				"javadoc",
				"javascript",
				"jsdoc",
				"json",
				"lua",
				"make",
				"markdown",
				"markdown_inline",
				"python",
				"regex",
				"rust",
				"typescript",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
