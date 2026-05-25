vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>ee", "<cmd>Neotree source=filesystem action=focus position=right toggle<CR>", {desc = "Toggle file manager on right"})
keymap.set("n", "<leader>ef", "<cmd>Neotree source=filesystem action=focus position=right<CR>", {desc = "Focus on file manager on right"})
