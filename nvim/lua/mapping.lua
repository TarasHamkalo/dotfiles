require "helpers/globals"
require "helpers/mapping-functions"

g.mapleader = ' '

-- LSP 
--nmap('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                                -- Code actions
--nm('<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')                                     -- Rename an object
--nm('gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')                                -- Go to declaration
--

-- Telescope 
nmap('gd', '<cmd>Telescope lsp_definitions<CR>')                            -- Goto declaration
--nm('<leader>p', '<cmd>Telescope oldfiles<CR>')                                   -- Show recent files
--nm('<leader>O', '<cmd>Telescope git_files<CR>')                                  -- Search for a file in project
nmap('<leader>ff', '<cmd>Telescope find_files<CR>')                                 -- Search for a file (ignoring git-ignore)
nmap('<leader>gb', '<cmd>Telescope git_branches<CR>')                               -- Show git branches
nmap('<leader>fw', '<cmd>Telescope live_grep<CR>')                                  -- Find a string in project
nmap('<leader>fr', '<cmd>Telescope buffers<CR>')                                    -- Show all buffers
nmap('<leader>ot', '<cmd>Telescope<CR>')                                            -- Show all commands
--nm('<leader>t', '<cmd>Telescope lsp_dynamic_workspace_symbols<CR>')              -- Search for dynamic symbols

-- Neo Tree 
nmap('<leader>n', '<cmd>Neotree toggle<CR>')                                        -- Toggle file explorer
-- 

-- Vim 
-- Noh search after ESC
nmap('<ESC>', '<ESC><cmd>noh<CR>')

-- Splits
nmap('<c-h>', '<c-w>h')
nmap('<c-j>', '<c-w>j')
nmap('<c-k>', '<c-w>k')
nmap('<c-l>', '<c-w>l')
nmap('<c-[>', '<cmd>vertical resize -10<CR>')
nmap('<c-]>', '<cmd>vertical resize +10<CR>')

-- Center screen
nmap('<c-u>', '<c-u>zz')
nmap('<c-d>', '<c-d>zz')
nmap('n', 'nzz')
nmap('N', 'Nzz')
--

--nnoremap <s-Tab> :action PreviousTab<CR>
--nnoremap <Tab> :action NextTab<CR>