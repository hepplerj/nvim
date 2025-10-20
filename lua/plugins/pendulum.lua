return {
  "ptdewey/pendulum-nvim",
  config = function()
    require("pendulum").setup({
      timeout_len = 180,
      timer_len = 120,
      gen_reports = true,
      top_n = 5,
      hours_n = 10,
      time_format = "12h",
      log_file = vim.env.HOME .. "/pendulum-log.csv",
      time_zone = "America/Chicago",
    })
  end,
}
