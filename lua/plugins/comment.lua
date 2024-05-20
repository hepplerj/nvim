return {
  "numToStr/Comment.nvim",
  config = function()
    local comment = require("Comment")

    comment.setup({
      -- Add space between comment and the line
      padding = true,
      -- Keep the cursor in its position
      sticky = true,
      -- keybindings
      mappings = {
        -- `gcc`, `gbc`, `gc[count]{motion}`, `gb[count]{motion}`
        basic = true,
        -- `gco`, `gc0`, `gcA`
        extra = true,
      },
      pre_hook = nil,
      post_hook = nil,
    })
  end,
}
