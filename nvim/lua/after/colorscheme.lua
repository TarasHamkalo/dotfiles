require("rose-pine").setup({
	disable_background = true
})

require("gruvbox").setup({
	disable_background = true
})

local color = "rose-pine"
function Draw(userColor)
	if userColor then
		color = userColor
	end

	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

function BgReset(userColor)
	if userColor then
		color = userColor
	end

	vim.cmd("hi clear")
	vim.cmd.colorscheme(color)
end

Draw("rose-pine-moon")
vim.cmd[[command! -nargs=? Draw lua Draw(<args>)]]
vim.cmd[[command! -nargs=? BgReset lua BgReset(<args>)]]
