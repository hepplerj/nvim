return {
  "folke/snacks.nvim",
  ---@module 'snacks.'
  ---@class snacks.Config
  opts = {
    -- animated scroll (distracting)
    scroll = {
      enabled = false,
    },
    ---@class snacks.indent.Config
    -- indent = {
    --   indent = {
    --     enabled = false,
    --   },
    -- },
    ---@class snacks.picker.Config
    picker = {
      icons = {
        files = {
          enabled = false,
        },
      },
      ---@class snacks.picker.formatters.Config
      formatters = {
        file = {
          truncate = 80,
          -- filename_first = true,
        },
      },
      layout = {
        layout = {
          box = "vertical",
          row = -1,
          backdrop = false,
          width = 0,
          min_width = 80,
          height = 0.8,
          min_height = 30,
          title = "{title} {live} {flags}",
          title_pos = "center",
          { win = "input", height = 1, border = "top" },
          { win = "list", border = "none" },
          { win = "preview", title = "{preview}", height = 0.4, border = "top" },
        },
      },
    },
  },
}
