return {
	"saecki/crates.nvim",
	tag = "stable",
	event = { "BufRead Cargo.toml" },
	config = function()
		require("crates").setup({
			lsp = {
				enabled = true,
				on_attach = require("utils.lsp").on_attach,
				actions = true,
				completion = true,
				hover = true,
			},
			completion = {
				crates = {
					enabled = true, -- disabled by default
					max_results = 8, -- The maximum number of search results to display
					min_chars = 3, -- The minimum number of charaters to type before completions begin appearing
				},
			},
		})
	end,
}
