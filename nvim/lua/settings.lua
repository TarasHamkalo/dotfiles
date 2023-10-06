require "helpers/globals"

-- Set associating between turned on plugins and filetype
cmd[[filetype plugin on]]

-- Disable comments on pressing Enter
cmd[[autocmd FileType * setlocal formatoptions-=cro]]


opt.compatible = false
opt.confirm = true 
-- Set scrolloff to 10 lines
opt.scrolloff = 10

-- Enable line numbers and relative line numbers
opt.number = true
opt.relativenumber = true

--(DEFAULT FOR NVIM) Hide the mouse cursor while typing
-- opt.mousehide = true

-- Disable error bells
opt.errorbells = false

-- Turn off all bells
opt.visualbell = false 

-- NO FOLDS
vim.wo.foldenable = false
-- Tabs 
opt.expandtab = false
opt.shiftwidth = 4 
opt.tabstop = 4 
opt.smartindent = true              

-- Clipboard 
opt.clipboard = 'unnamedplus'
opt.fixeol = false 

-- Folding
-- opt.foldmethod = 'syntax'

-- Search
opt.ignorecase = true            
opt.incsearch = true
opt.joinspaces = false            
opt.smartcase = true               
opt.showmatch = true                

-- Window
opt.splitbelow = true           
opt.splitright = true          

-- Wild Menu
opt.wildmenu = true
opt.wildmode = "longest:full,full"

-- Default Plugins {{{
local disabled_built_ins = {
    --"netrw",
    --"netrwPlugin",
    --"netrwSettings",
    --"netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
