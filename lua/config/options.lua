local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 2  -- spaces when pressing Tab
opt.shiftwidth = 2  -- spaces at each level of indentation
opt.softtabstop = 2  -- spaces when pressing Tab in Insert mode
opt.expandtab = true  -- converts tabs into spaces
opt.smartindent = true  -- auto-indentation
opt.wrap = false  -- text wrap

-- Search
opt.incsearch = true  -- searches with each added character
opt.ignorecase = true  -- case-insensitive
opt.smartcase = true  -- uses capitalization as part of the search
opt.hlsearch = true  -- highlight

-- Appearance
opt.number = true  -- line number
opt.relativenumber = true  -- line counter is relative to selected
opt.termguicolors = true  -- will attempt to use 24-bit RGB colors
opt.colorcolumn = '100'  -- chars from the left side to render column
opt.signcolumn = "yes"  -- "yes" - always draw color column
opt.cmdheight = 1  -- command line number of lines
opt.scrolloff = 10  -- minimum amt. of lines to keep above and below cursor

-- Autocompletion
-- 	menuone - show menu even if there is only one match
--	noinsert - do not automatically insert the match
--	noselect - no preselection
opt.completeopt = "menuone,noinsert,noselect"

-- Behavior
opt.hidden = true  -- enables unsaved buffer to switch between files
opt.errorbells = false  -- beep sound when you do something wrong
opt.swapfile = false  -- use swapfile for the buffer
opt.backup = false  -- save previous version of file after overwriting it
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true  -- keep a persistent history of undos to work after reopening the file
opt.backspace = "indent,eol,start"  -- how backspace/del works in Insert mode
opt.splitright = true  -- new window will be put to the right when split
opt.splitbelow = true  -- new window will be put to the bottom when split
opt.autochdir = false  -- automatically change cwd when opening a file
opt.iskeyword:append("-")  -- treat hyphen-separated words as one
opt.mouse:append('a')  -- enable mouse cursor in all modes
opt.clipboard:append("unnamedplus")  -- use system's clipboard
opt.modifiable = true  --enables modification of current buffer by default
-- https://neovim.io/doc/user/options.html#'guicursor'
opt.guicursor = "n-v-c:block,i-ci-ve:ver25,a:blinkon500-blinkwait175"
opt.encoding = "UTF-8"  -- encoding for the buffer
