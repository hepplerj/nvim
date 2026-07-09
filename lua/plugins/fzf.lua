return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>fp", function() require("fzf-lua").live_grep() end, desc = "Find in files (live grep)" },
  },
  config = function()
    require("fzf-lua").setup({ sort_lastused = true })
  end,
}
