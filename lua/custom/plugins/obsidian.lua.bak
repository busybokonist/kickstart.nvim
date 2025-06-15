-- ~/.config/nvim/lua/user/obsidian.lua

-- Load the Lazy package manager
-- require('lazy').setup {
-- Obsidian.nvim plugin
return {
  'obsidian-nvim/obsidian.nvim',
  --  version = '*', -- recommended, use latest release instead of latest commit
  --  lazy = true,
  ft = 'markdown',

  -- config = function()
  --   require('obsidian').setup {
  --     dir = '/Users/jackp/Library/Mobile Documents/iCloud~md~obsidian/Documents/filing-cabinet', -- Change this to your Obsidian vault path
  --     -- Optional configurations
  --     --       daily_notes = {
  --     --         folder = 'Daily', -- Folder for daily notes
  --     --         date_format = '%Y-%m-%d', -- Date format for daily notes
  --     --        },
  --     completion = {
  --       nvim_cmp = true, -- Enable nvim-cmp for completion
  --     },
  --   }
  -- end,
},
-- Autocompletion with nvim-cmp
{
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
    'hrsh7th/cmp-buffer', -- Buffer completions
    'hrsh7th/cmp-path', -- Path completions
    'hrsh7th/cmp-cmdline', -- Command line completions
    'saadparwaiz1/cmp_luasnip', -- Snippet completions
    'L3MON4D3/LuaSnip', -- Snippet engine
  },
  config = function()
    local cmp = require 'cmp'
    cmp.setup {
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For luasnip users
        end,
      },
      mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm { select = true },
      },
      sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'cmdline' },
      },
    }
  end,
},
-- Telescope with FZF support
{
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-fzf-native.nvim' },
  config = function()
    require('telescope').setup {
      defaults = {
        -- Default configuration for telescope goes here
        -- config_key = value,
      },
      pickers = {
        find_files = {
          theme = 'dropdown',
        },
      },
      extensions = {
        fzf = {
          fuzzy = true, -- false will not do a fuzzy search
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = 'ignore_case', -- or "respect_case" or "smart_case"
        },
      },
    }
    require('telescope').load_extension 'fzf'
  end,
}

-- Render Markdown plugin
-- {
--   'iamcco/markdown-preview.nvim',
--   run = function()
--     vim.fn['mkdp#util#install']()
--   end,
--   ft = { 'markdown' },
-- },

-- Additional plugins can be added here
--  ui == { enable = false },

--  disable_frontmatter == true,
-- }

-- Additional configuration for Obsidian can go here
