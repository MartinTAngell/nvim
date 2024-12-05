vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", {desc = "Increment"})
keymap.set("n", "<leader>-", "<C-x>", {desc = "Decrement"})

-- Windowing
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "Split vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "Split horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", {desc = "Make splits equal size"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc = "Close window"})

-- Tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "New tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "Close tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "Next tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "Previous tab"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "Current file in new tab"})
