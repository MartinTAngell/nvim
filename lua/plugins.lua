-- Catppuccin
vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }
vim.cmd.colorscheme("catppuccin-nvim")

-- Neotree
vim.pack.add({
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
        }
    },
    window = {
        mappings = {
            ["P"] = "navigate_up", 
        }
    }
})

-- Pack manager
vim.pack.add({
  "https://github.com/mplusp/pack-manager.nvim"
})
