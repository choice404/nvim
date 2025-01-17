-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<esc>")
keymap.set("n", "<leader>o", "o<esc>", { desc = "New line bellow" })
keymap.set("n", "<leader>O", "o<esc>", { desc = "New line above" })
keymap.set("n", "<leader>a", "$", { desc = "Cursor to end of line " })
keymap.set("n", "<leader>i", "_", { desc = "Cursor to beginning of line" })
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set(
  "n",
  "<leader>ss",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { noremap = true, silent = true, desc = "Replace current word" }
)
keymap.set("n", "Q", "<nop>")
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")

keymap.set("v", "<leader>jk", "<ESC>")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
