local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

--- Catpuccin
    { 
        "catppuccin/nvim", name = "catppuccin", priority = 1000 
    },

--- Neo-Tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
        }
    },

--- Telescope
    { 
        "nvim-telescope/telescope.nvim", tag = "0.1.8", 
        dependencies = { "nvim-lua/plenary.nvim" } 
    },

--- Treesitter
    { 
        "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" 
    },

--- Mason
    { 
        "williamboman/mason.nvim" 
    },

--- Mason-LSP
    { 
        "williamboman/mason-lspconfig.nvim" 
    },

--- Nvim-LSP
    { 
        "neovim/nvim-lspconfig" 
    },

--- Lualine (Statusline)
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = { theme = "catppuccin" }
            })
        end
    },

})

