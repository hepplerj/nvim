return {

  "rcarriga/nvim-notify",

  config = function()
    vim.opt.termguicolors = true
    vim.notify = require("notify")
    local notify = require("notify")

    notify.setup({
      timeout = 2000,
    })
  end,
}
