return {

  "rcarriga/nvim-notify",

  config = function()
    vim.opt.termguicolors = true
    local notify = require("notify")

    notify.setup({
      timeout = 2000,
      merge_duplicates = false,
    })

    vim.notify = require("notify")
  end,
}
