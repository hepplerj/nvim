return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
    },
    opts = {
      -- process_spinner = true,
      graph_style = "kitty",
      signs = {
        -- { CLOSED, OPENED }
        hunk = { "", "" },
        item = { "+", "-" },
        section = { "+", "-" },
      },
    },
    keys = {
      {
        "<leader>gg",
        function()
          local neogit = require("neogit")
          neogit.open({ kind = "floating" })
        end,
        desc = "neogit open",
      },
    },
  },
}
