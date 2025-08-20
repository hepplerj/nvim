return {
  {
    "cvigilv/denote.nvim",
    opts = {
      ext = "org", -- Note file extension (e.g. md, org, norg, txt)
      dir = "~/Documents/notes", -- Notes directory (should already exist)
      add_heading = true, -- Add a md/org heading to new notes
      retitle_heading = true, -- Replace the first line heading when retitling
    },

    {
      "https://codeberg.org/historia/denote-fzf-lua",
      opts = {
        dir = "~/Documents/notes", -- Denote notes directory

        -- Toggle which Denote fields are displayed in search
        search_fields = {
          path = false,
          date = true,
          time = false,
          sig = false,
          title = true,
          keywords = true,
          ext = false,
        },

        -- -- OPTIONAL:
        -- -- fzf-lua plugin options. Check fzf-lua docs for full details.
        -- -- Use this to set custom window and fzf options (and more)
        -- fzf_lua_opts = {
        --   winopts = {
        --     height = 0.85,
        --     width = 0.80,
        --     row = 0.35,
        --     col = 0.50,
        --     preview = {
        --       layout = "vertical", -- vertical, horizontal, or flex
        --       vertical = "down:45%", -- Alt: horizontal = 'right:50%'
        --     },
        --   },
        --   -- Options sent to fzf. If you don't include these, it will be
        --   -- set to the defaults below (which look like the screenshot)
        --   fzf_opts = {
        --     ["--reverse"] = true,
        --     ["--no-info"] = true,
        --     ["--no-separator"] = true,
        --     ["--no-hscroll"] = true,
        --     ["-i"] = true,
        --   },
        --},
      },
    },
  },
}
