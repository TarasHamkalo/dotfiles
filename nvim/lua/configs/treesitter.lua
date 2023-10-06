local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = {
    "lua",
	"vim",
	"c",
	"java",
  },

  sync_install = false,

  highlight = {
 	enable = true,
    disable = {},
  },

  indent = {
    enable = false,
    disable = {},
  }
})
