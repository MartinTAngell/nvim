local keymap = vim.keymap.set

keymap("n", "<leader>ee", "<cmd>Neotree source=filesystem action=focus position=right toggle<CR>",
    { desc = "Toggle file manager on right" })
keymap("n", "<leader>ef", "<cmd>Neotree source=filesystem action=focus position=right<CR>",
    { desc = "Focus on file manager on right" })
keymap("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Unhighlight from search" })
keymap("n", "<Leader>fh", ":lua vim.lsp.buf.format()<CR>", { silent = true })
