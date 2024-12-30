-- colorscheme.lua

require("catppuccin").setup({
    flavour = "auto",  -- Set default flavour (e.g., latte, frappe, mocha)
    background = { light = "latte", dark = "mocha" },
    transparent_background = false,
    show_end_of_buffer = false,
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
    },
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
    },
})

vim.cmd.colorscheme("catppuccin")

