vim.pack.add { 'https://github.com/vyfor/cord.nvim' }

require('cord').setup {
  editor = {
    tooltip = 'i use neovim btw',
  },
  display = {
    theme = 'catppuccin',
    flavor = 'dark',
  },
  idle = {
    timeout = 600000, -- 10 mins
  },
  advanced = {
    server = {
      update = 'fetch',
      auto_update = false,
    },
  },
}
