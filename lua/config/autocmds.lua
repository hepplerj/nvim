-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})

-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   pattern = { "markdown", "md" },
--   callback = function()
--     vim.wo.conceallevel = 2
--   end,
-- })

-- Disable Copilot for Markdown files
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   pattern = "markdown, md",
--   callback = function()
--     vim.g.copilot_disabled = true
--   end,
-- })
