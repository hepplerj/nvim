return {
  "joshuadanpeterson/typewriter",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    -- ts_utils was removed from nvim-treesitter; shim the only function typewriter uses
    package.preload["nvim-treesitter.ts_utils"] = function()
      return {
        get_node_at_cursor = function()
          return vim.treesitter.get_node()
        end,
      }
    end
    require("typewriter").setup({
      enable_with_zen_mode = true,
      enable_with_true_zen = true,
      keep_cursor_position = true,
      enable_notifications = true,
      enable_horizontal_scroll = true,
      start_enabled = false,
      always_center = false,
      always_center_filetypes = {},
    })
  end,
  opts = {},
}
