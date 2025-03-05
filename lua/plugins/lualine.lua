local config = {
  options = {
    theme = 'auto',  -- TBC. Works for now 
    globalstatus = true,
  },
  sections = {
    lualine_z = { 'buffers', 'location' },
  }
}

return {
  'nvim-lualine/lualine.nvim',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = config,
}
