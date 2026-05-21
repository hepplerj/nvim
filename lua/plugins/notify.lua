return {

  "rcarriga/nvim-notify",

  config = function()
    vim.opt.termguicolors = true
    local notify = require("notify")

    notify.setup({
      timeout = 1000,
      merge_duplicates = false,
      render = "compact",
      stages = "fade",
      top_down = true,
    })

    vim.notify = require("notify")
  end,
}
