return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
  },
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
  },
  {
    "zootedb0t/citruszest.nvim",
    priority = 1000,
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme nightfox")
    end,
  },
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
        vim.cmd("colorscheme carbonfox")
        vim.api.nvim_set_option_value("background", "dark", {})
      end,
      set_light_mode = function()
        -- dayfox as secondary
        vim.cmd("colorscheme dawnfox")
        vim.api.nvim_set_option_value("background", "light", {})
      end,
    },
  },
}
