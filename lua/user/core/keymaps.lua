vim.g.mapleader = " "

local keymap = vim.keymap

-- nvim remaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "<leader>a", "A<ESC>")
keymap.set("n", "<leader>i", "I<ESC>")
keymap.set('n', '<leader>o', 'o<esc>')
keymap.set('n', '<leader>O', 'O<esc>')
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- tmux keybinds
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- nvim-tree keybinds
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

