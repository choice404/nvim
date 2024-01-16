vim.g.mapleader = " "

local keymap = vim.keymap

-- nvim remaps
keymap.set("i", "jk", "<ESC>")

keymap.set("v", "<leader>jk", "<ESC>")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "<leader>a", "$")
keymap.set("n", "<leader>i", "_")
keymap.set('n', '<leader>o', 'o<esc>')
keymap.set('n', '<leader>O', 'O<esc>')
keymap.set('n', 'J', 'mzJ`z')
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')
keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("n", "<leader>pd", "<C-d>zz")
keymap.set("n", "<leader>pu", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set('x', '<leader>p', '\"_dp')

keymap.set('n', '<leader>y', '\"+y')
keymap.set('n', '<leader>Y', '\"+y')
keymap.set('v', '<leader>y', '\"+y')

keymap.set('n', '<leader>d', '\"_d')
keymap.set('v', '<leader>d', '\"_d')

keymap.set('n', 'Q', '<nop>')
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
keymap.set('n', '<C-j>', '<cmd>cnext<CR>zz')
keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
keymap.set('n', '<leader>j', '<cmd>lnext<CR>zz')

keymap.set("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- tmux keybinds
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- nvim-tree keybinds
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

