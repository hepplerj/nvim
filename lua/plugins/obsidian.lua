-- obsidian
return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  event = {
    "BufReadPre ~/research/Research/*.md",
    "BufNewFile ~/research/Research/*.md",
  },
  priority = 1000,
  dependencies = {
    "hrsh7th/nvim-cmp",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "research",
          path = vim.fn.expand("~/research/Research"),
        },
      },
      completion = {
        nvim_cmp = true,
        min_chars = 2,
        match_case = false,
        blink = false,
      },
      mappings = {
        ["gf"] = {
          action = function()
            return require("obsidian").util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
        ["<leader>ch"] = {
          action = function()
            return require("obsidian").util.toggle_checkbox()
          end,
          opts = { buffer = true },
        },
        ["<cr>"] = {
          action = function()
            return require("obsidian").util.smart_action()
          end,
          opts = { buffer = true, expr = true },
        },
      },
    })
  end,
}
