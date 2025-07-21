return {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup({
      window = {
        backdrop = 0.95,
        width = 120,
        height = 1,
        options = {
          -- Enable wrapping and other writing-friendly options
          wrap = true,
          linebreak = true,
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false,
          showcmd = false,
        },
        twilight = { enabled = true },
        gitsigns = { enabled = false },
        tmux = { enabled = false },
      },
      opts = {
        on_open = function()
          vim.cmd("TWEnable")
        end,
        on_close = function()
          vim.cmd("TWDisable")
        end,
      },
    })
  end,
}
