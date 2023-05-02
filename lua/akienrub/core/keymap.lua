local keymap = vim.keymap

-- Leader
vim.g.mapleader = " "

-- Explore dir of current file
keymap.set("n", "<Leader>pv", vim.cmd.Explore)

-- Insert new line bellow and above with enter in normal mode
keymap.set("n", "<Enter>", "o<ESC>")
keymap.set("n", "<Leader><Enter>", "O<ESC>")

-- Move highlighted block of text
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Clear highlights (instead of CTRL+L)
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Don't copy to clipboard x
keymap.set("n", "x", '"_x')

-- Window spliting
keymap.set("n", "<leader>sv", "<C-w>v") -- vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- horizontally 
keymap.set("n", "<leader>se", "<C-w>=") -- make equal window width 
keymap.set("n", "<leader>sx", ":close<CR>") --close current windoww

-- Moving between splits
keymap.set("n", "<leader>sh", "<C-w>h")
keymap.set("n", "<leader>sj", "<C-w>j")
keymap.set("n", "<leader>sk", "<C-w>k")
keymap.set("n", "<leader>sl", "<C-w>l")

-- Tab windows
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab 
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab 
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab 
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab 

