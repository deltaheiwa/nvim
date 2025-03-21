local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Directory Navigation
keymap.set("n", "<leader><Tab>", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Right

-- Window Navigation
keymap.set("t", "<C-h>", "[[<Cmd>wincmd h<CR>]]", opts) -- Left
keymap.set("t", "<C-j>", "[[<Cmd>wincmd j<CR>]]", opts) -- Down
keymap.set("t", "<C-k>", "[[<Cmd>wincmd k<CR>]]", opts) -- Up
keymap.set("t", "<C-l>", "[[<Cmd>wincmd l<CR>]]", opts) -- Right

-- Tmux Navigation
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts) -- Left
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts) -- Down
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts) -- Up
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts) -- Right

-- Window Management
keymap.set("n", "<leader>sx", ":vsplit<CR>", opts) -- Vertical Split
keymap.set("n", "<leader>sd", ":split<CR>", opts) -- Horizontal Split

-- Indenting (fixes auto-exit on indent)
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-/>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-/>", "gcc", { noremap = false })

-- Remove highlighting
keymap.set("n", ",", ":noh<CR>", opts)
