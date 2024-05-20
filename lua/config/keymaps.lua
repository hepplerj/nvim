-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Move line up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- insert @done(<date>) to end of line, ensuring a space before it
keymap("n", "<leader>dt", "A @done(<C-r>=strftime('%Y-%m-%d')<CR>)<esc>", opts)

-- quick exit by typing jj
keymap("i", "jj", "<esc>", opts)

-- reload config file
keymap("n", "<leader>rc", ":luafile ~/.config/nvim/init.lua<CR>", opts)

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

-- spectre search
keymap("n", "<leader>ss", ":lua require('spectre').toggle()<CR>", opts)
keymap("n", "<leader>sw", ":lua require('spectre').open_visual({select_word=true})<CR>", opts)
keymap("v", "<leader>sw", ":lua require('spectre').open_visual()<CR>", opts)
keymap("n", "<leader>sp", ":lua require('spectre').open_file_search({select_word=true})<CR>", opts)

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

-- gen.nvim
vim.keymap.set({ "n", "v" }, "<leader>]", ":Gen<CR>")

-- fzf-lua
keymap("n", "<leader>ff", ":lua require('fzf-lua').files()<CR>", opts) -- override the default ff keymap
keymap("n", "<leader>fg", ":lua require('fzf-lua').git_files()<CR>", opts)
