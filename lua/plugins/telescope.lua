local keymap = vim.keymap

local dependencies = { 
  'nvim-lua/plenary.nvim',
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
}

local config = function()
  local telescope = require('telescope')
  local builtin = require('telescope.builtin')
  telescope.setup({
    defaults = {
      mappings = {
        i = {
          ["<C-h>"] = "which_key",
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
        previewer = false,
        hidden = true,
      },
      live_grep = {
        theme = "dropdown",
        previewer = false,
      },
      find_buffers = { 
        theme = "dropdown",
        previewer = false,
      }
    },
  })

  keymap.set("n", "<leader>ff", builtin.find_files)
  keymap.set("n", "<leader>fn", function()
    builtin.find_files {
      cwd = vim.fn.stdpath("config")
    }
  end)
  keymap.set("n", "<leader>fg", builtin.live_grep)
  keymap.set("n", "<leader>fh", builtin.help_tags)
  keymap.set("n", "<leader>fb", builtin.buffers)
  keymap.set("n", "<leader>fk", builtin.keymaps)
end

return {
  'nvim-telescope/telescope.nvim',
  lazy = false,
  tag = '0.1.8',
  config = config,
  dependencies = dependencies,
}
