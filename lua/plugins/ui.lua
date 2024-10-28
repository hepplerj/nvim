return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },
  -- spectre
  { "nvim-pack/nvim-spectre", config = true },
  -- everforest
  { "neanias/everforest-nvim", version = false, lazy = false, priority = 1000 },
  -- catppuccin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
