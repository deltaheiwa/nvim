vim.pack.add { gh 'stevearc/oil.nvim' }
vim.pack.add { gh 'refractalize/oil-git-status.nvim' }

require("oil").setup({
  win_options = {
    signcolumn = "yes:2",
  },
})

require("oil-git-status").setup()

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
