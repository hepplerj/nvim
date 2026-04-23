return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme duskfox")
    end,
  },
  { "kepano/flexoki-neovim", name = "flexoki" },
  {
    "mvllow/modes.nvim",
    config = function()
      require("modes").setup()
    end,
  },
}
