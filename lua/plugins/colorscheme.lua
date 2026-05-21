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
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      update_interval = 5000,
      set_dark_mode = function()
        vim.cmd("colorscheme catppuccin-mocha")
        vim.api.nvim_set_option_value("background", "dark", {})
      end,
      set_light_mode = function()
        -- dayfox as secondary
        -- or paper
        vim.cmd("colorscheme flexoki-light")
        vim.api.nvim_set_option_value("background", "light", {})
      end,
    },
  },
}
