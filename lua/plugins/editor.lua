return {
  -- telescope file browser
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },

  -- obsidian
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "research",
          path = "~/research/Research",
        },
        {
          name = "central",
          path = "~/obsidian/Central",
        },
      },
    },
    mappings = {
      -- Toggle check-boxes in Obsidian files. When it's toggled, append a string of @done(<date>) to the line.
      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
    },
  },
  -- pomo: pomodoro timer
  {
    "epwalsh/pomo.nvim",
    version = "*",
    lazy = true,
    cmd = { "TimerStart", "TimerRepeat" },
  },
  -- wrapping
  {
    "andrewferrier/wrapping.nvim",
    config = function()
      require("wrapping").setup({
        softener = { markdown = 1.3 },
      })
    end,
  },
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
}
