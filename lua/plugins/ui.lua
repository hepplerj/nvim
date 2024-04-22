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
  -- toggleterm
  { "akinsho/toggleterm.nvim", version = "*", config = true },
  -- spectre
  { "nvim-pack/nvim-spectre", config = true },
}
