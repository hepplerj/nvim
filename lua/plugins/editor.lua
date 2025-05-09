return {
  -- telescope file browser
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
    config = function()
      local telescope = require("telescope")
      telescope.load_extension("live_grep_args")
    end,
  },

  --nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      cmp.setup({

        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
      })
    end,
  },

  -- pomo: pomodoro timer
  {
    "epwalsh/pomo.nvim",
    version = "*",
    lazy = true,
    cmd = { "TimerStart", "TimerRepeat" },
  },
  -- wrapping
  -- {
  --   "andrewferrier/wrapping.nvim",
  --   config = function()
  --     require("wrapping").setup({
  --       softener = { markdown = 1.3 },
  --     })
  --   end,
  -- },
  -- local llm -- must have ollama running
  {
    "David-Kunz/gen.nvim",
    opts = {
      model = "zephyr", -- The default model to use.
    },
  },
  -- barbecue
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
  },
  -- mini menu
  {
    "nvchad/volt",
    lazy = true,
  },
  {
    "nvchad/menu",
    lazy = true,
  },
  -- multicursor
  {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    config = function()
      local mc = require("multicursor-nvim")
      mc.setup()
    end,
  },
}
