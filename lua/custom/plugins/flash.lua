local map = vim.keymap.set

vim.pack.add { 'https://github.com/folke/flash.nvim' }

map({ 'n', 'x', 'o' }, 'q', function() require('flash').jump() end, { desc = 'Flash' })
map({ 'n', 'x', 'o' }, 'Q', function() require('flash').treesitter() end, { desc = 'Flash Treesitter' })
map('o', 'r', function() require('flash').remote() end, { desc = 'Remote Flash' })
map({ 'o', 'x' }, 'R', function() require('flash').treesitter_search() end, { desc = 'Treesitter Search' })
map('c', '<c-q>', function() require('flash').toggle() end, { desc = 'Toggle Flash Search' })

require('flash').setup({})
