-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Move line up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- obsidian
-- when cursor is on a link, open it using :ObsidianFollowLink
keymap("n", "<leader>of", ":ObsidianFollowLink<CR>", opts)
-- show backlinks for the current note
keymap("n", "<leader>ob", ":ObsidianBacklinks<CR>", opts)
-- create today note
keymap("n", "<leader>ot", ":ObsidianToday<CR>", opts)

-- toggleterm
-- fire off :ToggleTerm
keymap("n", "<leader>tt", ":ToggleTerm<CR>", opts)

function _G.set_terminal_keymaps()
  local args = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], args)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], args)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], args)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], args)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], args)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], args)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], args)
end
