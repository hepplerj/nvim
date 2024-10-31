return {
  -- rainbow_csv
  {
    "mechatroner/rainbow_csv",
  },
  -- oil
  {
    "stevearc/oil.nvim",
  },
  -- nvim-orgmode
  {
    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    ft = { "org" },
    dependencies = { "nvim-orgmode/org-bullets.nvim" },
    config = function()
      require("orgmode").setup({
        org_agenda_files = "~/Documents/org/**/*",
        org_default_notes_file = "~/Documents/org/notes.org",
        org_agenda_start_on_weekday = false,
        org_startup_indented = true,
        org_log_into_drawer = "LOGBOOK",
        org_todo_keywords = {
          "TODO(t)",
          "NEXT(n)",
          "IDEA(i)",
          "HOLD(h)",
          "REVW(r)",
          "|",
          "DONE(d)",
          "REJECTED(r)",
          "WAITING(w)",
        },
        org_capture_templates = {
          t = {
            description = "Refile",
            template = "* TODO %?\nDEADLINE: %T",
          },
          T = {
            description = "Todo",
            template = "* TODO %?\nDEADLINE: %T",
            target = "~/Documents/org/todos.org",
          },
          w = {
            description = "Work todo",
            template = "* TODO %?\nDEADLINE: %T",
            target = "~/Documents/org/work.org",
          },
        },
      })
      require("org-bullets").setup({
        concealcursor = true,
        symbols = {
          checkboxes = {
            half = { "", "@org.checkbox.halfchecked" },
            done = { "✓", "@org.checkbox.checked" },
            todo = { " ", "@org.checkbox" },
          },
        },
      })
    end,
  },
}
