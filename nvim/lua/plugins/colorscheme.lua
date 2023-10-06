return  {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
  	config = function(_) 
		vim.cmd([[colorscheme rose-pine-moon]])
	end,
}

