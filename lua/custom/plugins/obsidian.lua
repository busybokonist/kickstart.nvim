---@type LazySpec
return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    -- "hrsh7th/nvim-cmp",
    -- "nvim-telescope/telescope.nvim",

    -- see above for full list of optional dependencies ☝️
  },
  ---@module 'obsidian'
  ---@type obsidian.config.ClientOpts
  -- require('obsidian').setup({ 

  opts = {
    workspaces = {
      {
        name = "filing-cabinet",
        path = "/Users/jackp/Library/Mobile Documents/iCloud~md~obsidian/Documents/filing-cabinet",
      },
      {
        name = "work-notes",
        path = "/Users/jackp/Library/Mobile Documents/iCloud~md~obsidian/Documents/INF-notes",
      },
      {
        name = "seek",
        path = "/Users/jackp/vaults/SEEK",
      },
    },
  
  -- see below for full list of options 👇
    
    -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
    completion = {
      -- Enables completion using nvim_cmp
      nvim_cmp = true,
      -- Enables completion using blink.cmp
      blink = false,
      -- Trigger completion at 2 chars.
      min_chars = 2,
    },

    picker = {
      -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', 'mini.pick' or 'snacks.pick'.
      name = "telescope.nvim",
      -- Optional, configure key mappings for the picker. These are the defaults.
      -- Not all pickers support all mappings.

    note_mappings = {
      -- Create a new note from your query.
      new = "<C-x>",
      -- Insert a link to the selected note.
      insert_link = "<C-l>",
    },
    
    tag_mappings = {
      -- Add tag(s) to current note.
      tag_note = "<C-x>",
      -- Insert a tag at the current location.
      insert_tag = "<C-l>",
    },
  },

    ui = { enable = false },

    disable_frontmatter = true,
  },
}
-- })
