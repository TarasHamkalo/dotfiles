require("rose-pine").setup({
	disable_background = true
})

require("gruvbox").setup({
	disable_background = true
})

function Draw(color)
	color = color or "rose-pinee"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Draw("rose-pine-moon")
vim.cmd[[command! -nargs=1 Draw lua Draw(<args>)]]
-- Draw("gruvbox")
