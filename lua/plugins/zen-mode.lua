return {
  "folke/zen-mode.nvim",
  opts = {
    on_open = function()
      vim.cmd("TWEnable")
    end,
    on_close = function()
      vim.cmd("TWDisable")
    end,
  },
}
