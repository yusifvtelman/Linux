local M = {}

function M.setup()
    local status, telescope = pcall(require, "telescope")
    if not status then
        vim.notify("Telescope is not installed", vim.log.levels.ERROR)
        return
    end

    telescope.setup({
        defaults = {
            vimgrep_arguments = {
                "rg",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
            },
            prompt_prefix = "🔍 ",
            selection_caret = "➤ ",
        },
    })
end

return M

