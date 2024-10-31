local colorscheme = {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,
}
colorscheme.config = function()
  vim.opt.background = vim.env.NVIM_COLORSCHEME_BG or "dark"

  vim.cmd.filetype("plugin indent on")
  vim.cmd.syntax("on")

  return colorscheme
end

return colorscheme
