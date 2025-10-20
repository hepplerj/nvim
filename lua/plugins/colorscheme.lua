return {
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
  },
  {
    "mvllow/modes.nvim",
    config = function()
      require("modes").setup()
    end,
  },
  {
    "kepano/flexoki-neovim",
    name = "flexoki",
  },
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      update_interval = 5000,
      set_dark_mode = function()
        vim.cmd("colorscheme flexoki-dark")
        vim.api.nvim_set_option_value("background", "dark", {})
      end,
      set_light_mode = function()
        -- dayfox as secondary
        vim.cmd("colorscheme flexoki-light")
        vim.api.nvim_set_option_value("background", "light", {})
      end,
    },
  },
}
