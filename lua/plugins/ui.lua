return {

  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      options = {
        theme = "base2tone_lavender_dark",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = { "fileformat", "filetype", "progress" },
        lualine_z = { "location" },
      },
      winbar = {
        lualine_a = {
          "filename"
        },
        lualine_b = {
          "location"
        },
        lualine_c = {
          "lsp_status"
        },
      },
    },
  },

  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },

  {
    'nvim-tree/nvim-tree.lua',
    version = "*",
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {},
  },

  {
    'HiPhish/rainbow-delimiters.nvim',
    submodules = false,
    main = 'rainbow-delimiters.setup',
    opts = {},
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
      "hrsh7th/nvim-cmp",
    },

  }
}
