return {
	"folke/which-key.nvim",
  event = 'VeryLazy',  -- load this after everything else
  opts = {},
  keys = {
    {
      '<leader>?',
      function()
        require('which-key').show({ global = false })
      end,
    }
  },
}

