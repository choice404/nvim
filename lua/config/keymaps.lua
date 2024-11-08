-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>") -- Alternate escape key

keymap.set("n", "<leader>o", "o<esc>") -- Creates a new line below and enters normal mode
keymap.set("n", "<leader>O", "O<esc>") -- Creates a new line above and enters normal mode

-- Tmux commands
keymap.set("n", "<leader>pv", "<C-w>v") -- New vertical pane
keymap.set("n", "<leader>ph", "<C-w>s") -- New horizontal pane
keymap.set("n", "<leader>pe", "<C-w>=") -- Sets pane sizes equal
keymap.set("n", "<leader>px", ":close<CR>") -- Removes pane
