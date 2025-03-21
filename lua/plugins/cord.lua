return {
	"vyfor/cord.nvim",
  lazy = false,
	build = ":Cord update",
	opts = {
    editor = {
      tooltip = "i use neovim btw",
    },
    display = {
      theme = "catppuccin",
      flavor = "dark"
    },
    idle = {
      timeout = 600000, -- 10 mins
    },
  },
}
