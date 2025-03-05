local keymap = vim.keymap
local bufnr = vim.api.nvim_get_current_buf()
local opts = { silent = true, buffer = bufnr }

keymap.set("n", "<leader>a", function()
	vim.cmd.RustLsp("codeAction")
end, opts)
keymap.set("n", "K", function()
	vim.cmd.RustLsp({ "hover", "actions" })
end, opts)

