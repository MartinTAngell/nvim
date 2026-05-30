local keymap = vim.keymap.set

keymap("n", "<leader>ee", "<cmd>Neotree source=filesystem action=focus position=right toggle<CR>",
    { desc = "Toggle file manager on right" })
keymap("n", "<leader>ef", "<cmd>Neotree source=filesystem action=focus position=right<CR>",
    { desc = "Focus on file manager on right" })
keymap("n", "<leader>nh", "<cmd>nohlsearch<CR>", { desc = "Unhighlight from search" })
keymap("n", "<Leader>fh", "<cmd>lua vim.lsp.buf.format()<CR>", { silent = true })

keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
