vim.g.mapleader = " "

local keymap = vim.keymap

-- Important Existing Keymaps
-- ys w " would surround the existing word with "
-- ds " would delete the " from the surround word
-- cs " ' would replace the closest set of " with '
-- gcc comments or uncomments a line

-- General
keymap.set("i", "jk", "<ESC>", { desc = "Exits insert mode if jk is typed"})
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Removes highlights from searching" })

--Nvim-Tree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggles whether the file explorer is shown" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>", { desc = "Focuses on the tree" })

-- Better single character deletion
keymap.set("n", "x", '"_x', { desc = "Makes it so deleting a single character will not copy it into register" })

-- Increment and Decrement
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increments selected number by one" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement selected number by one" })

-- Window Splitting
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<CR>", { desc = "Maximize the current window" })

-- Tab Management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Opens a new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Closes the current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Switch to the next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Switch to the previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current file in a new tab" })

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

