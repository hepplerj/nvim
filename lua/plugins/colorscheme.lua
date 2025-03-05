return {
  -- {
  --   "catppuccin/nvim",
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  -- },
  -- {
  --   "nyoom-engineering/oxocarbon.nvim",
  -- },
  -- {
  --   "zortax/three-firewatch",
  -- },
  -- {
  --   "rakr/vim-two-firewatch",
  -- },
  { "miikanissi/modus-themes.nvim", priority = 1000 },
  {
    "vim-paper",
    name = "vim-paper",
    dir = "~/projects/vim-paper",
  },
  {
    "Shatur/neovim-ayu",
    priority = 1000,
  },
  {
    "ribru17/bamboo.nvim",
    priority = 1000,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = vim.fn.getenv("ITERM_PROFILE") == "Light" and "paper" or "modus",
    },
  },
  -- {
  -- "EdenEast/nightfox.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd("colorscheme nightfox")
  --   end,
  -- }
}
