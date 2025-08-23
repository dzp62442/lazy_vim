-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 使用 Alt + / 打开关闭终端
vim.keymap.set("n", "<A-/>", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
vim.keymap.set("t", "<A-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })