-- init.lua

-- Load basic options and settings
require("core.options")

-- Load plugin manager (lazy.nvim) and plugin configuration
require("plugins.init")

-- Load keymaps and mappings (after plugins are loaded)
require("core.keymaps")

-- Load colorscheme
require("core.colorscheme")

-- Load LSP settings
require("plugins.lsp")

