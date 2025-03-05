local config = function()
  require('nvim-treesitter.configs').setup({
    highlight = { 
      enable = true,
      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    -- autotag = { enable = true },  -- Autoclosing tags
    ensure_installed = {
      "bash", "c", "c_sharp", "cpp", "java", "json", "jsonc", "odin", 
      "python", "rust", "sql", "lua", "vim", "xml", "yaml", 
    },
    auto_install = true,
  })
end

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = function()
    require('nvim-treesitter.install').update({ with_sync = true })()
  end,
  config = config,
}
