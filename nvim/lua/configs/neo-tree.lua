local neotree = require("neo-tree")

neotree.setup({
  close_if_last_window = false,
  name = {
    trailing_slash = true,
    use_git_status_colors = true,
    highlight = "NeoTreeFileName",
  },

  window = {
    width = 50,
    mappings = {
      ["o"] = "open",
	  ["/"] = "",
    }
  },

  filesystem = {
	  filtered_items = {
	    visible = false, -- when true, they will just be displayed differently than normal items
	    hide_gitignored = false,
    }
  },
})
