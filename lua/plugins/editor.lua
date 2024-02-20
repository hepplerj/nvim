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
      -- Toggle check-boxes.
      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
    },

    note_id_func = function(title)
      -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
      -- In this case a note with the title 'My new note' will be given an ID that looks
      -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
      local suffix = ""
      if title ~= nil then
        -- If title is given, transform it into valid file name.
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        -- If title is nil, just add 4 random uppercase letters to the suffix.
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.time()) .. "-" .. suffix
    end,

    note_frontmatter_func = function(note)
      -- if note id is empty, create a roam-style ID with a timestamp and a random suffix
      if note.id == "" then
        note.id = tostring(os.time())
          .. "-"
          .. string.char(math.random(65, 90))
          .. string.char(math.random(65, 90))
          .. string.char(math.random(65, 90))
          .. string.char(math.random(65, 90))
      end
      return {
        title = note.title,
        id = note.id,
        tags = note.tags,
        date = os.date("%Y-%m-%d"),
      }
    end,
  },
}
