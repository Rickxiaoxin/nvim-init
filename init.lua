vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.number = true
vim.o.relativenumber = true
vim.o.breakindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.list = true
vim.o.scrolloff = 5
vim.o.inccommand = "split"
vim.o.cursorline = true
vim.o.confirm = true

vim.api.nvim_create_autocmd("UIEnter", {
  callback = function()
    vim.o.clipboard = "unnamedplus"
  end,
})

vim.api.nvim_create_autocmd("VimLeave", {
  group = vim.api.nvim_create_augroup("vim-leave", { clear = true }),
  command = "set guicursor=a:ver25-blinkwait700-blinkoff400-blinkon250",
})

vim.cmd("packadd! nohlsearch")

vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>")
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<left>", '<Cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<Cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<Cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<Cmd>echo "Use j to move!!"<CR>')

vim.keymap.set({ "t", "i" }, "<A-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set({ "t", "i" }, "<A-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set({ "t", "i" }, "<A-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set({ "t", "i" }, "<A-l>", "<C-\\><C-n><C-w>l")
vim.keymap.set({ "n" }, "<A-h>", "<C-w>h")
vim.keymap.set({ "n" }, "<A-j>", "<C-w>j")
vim.keymap.set({ "n" }, "<A-k>", "<C-w>k")
vim.keymap.set({ "n" }, "<A-l>", "<C-w>l")

vim.keymap.set({ "t" }, "<C-h>", "<C-\\><C-n>:vertical resize -1<CR>")
vim.keymap.set({ "t" }, "<C-l>", "<C-\\><C-n>:vertical resize +1<CR>")
vim.keymap.set({ "t" }, "<C-j>", "<C-\\><C-n>:resize +1<CR>")
vim.keymap.set({ "t" }, "<C-k>", "<C-\\><C-n>:resize +1<CR>")
vim.keymap.set({ "n" }, "<C-h>", ":vertical resize -1<CR>")
vim.keymap.set({ "n" }, "<C-l>", ":vertical resize +1<CR>")
vim.keymap.set({ "n" }, "<C-j>", ":resize +1<CR>")
vim.keymap.set({ "n" }, "<C-k>", ":resize -1<CR>")

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  callback = function()
    vim.hl.on_yank()
  end,
})

require("config.lazy")
