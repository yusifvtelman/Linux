-- Keymaps
vim.g.mapleader = " "

-- Safe loading of Telescope keymaps
pcall(function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = "Find files" })
    vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = "Live grep" })
end)

-- General keymaps
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = "Save file" })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = "Quit Neovim" })
