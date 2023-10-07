require("helpers.globals")
require("helpers.mapping-functions")

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)
-- nmap("", ui.toggle_quick_menu)
vim.keymap.set("n", "<s-tab>", ui.nav_prev)
vim.keymap.set("n", "<tab>", ui.nav_next)
