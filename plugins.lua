local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "rhysd/clever-f.vim",
    enabled = false,
    event = "InsertEnter",
    config = function()
      require "custom.configs.clever-f"
    end,
  },

  {
    "Shatur/neovim-session-manager",
    lazy = false,
    config = function()
      require "custom.configs.session-manager"
    end,
  },

  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require "custom.configs.db-nvim"
    end,
    dependencies = {{"nvim-tree/nvim-web-devicons"}}
  },

  {
    "stevearc/aerial.nvim",
    lazy = false,
    config = function()
      require "custom.configs.aerial"
    end,
  },

  {
    "folke/drop.nvim",
    event = "VimEnter",
    config = function()
      require "custom.configs.drop"
    end,
    enabled = false,
  },

  {
    "monaqa/dial.nvim",
    lazy = false,
    config = function()
      require "custom.configs.dial"
    end,
  },

  { "gorkunov/smartpairs.vim", lazy = false, },

  { "tpope/vim-surround", lazy = false, },

  { "stevearc/dressing.nvim", lazy = false, },

  { "tmhedberg/SimpylFold", lazy = false, },

  {
    "kdheepak/lazygit.nvim", lazy = false,
    -- optional for floating window border decoration
    dependencies = { "nvim-lua/plenary.nvim", },
  },


  { 'piersolenski/telescope-import.nvim',
    requires = 'nvim-telescope/telescope.nvim',
    config = function()
      require("telescope").load_extension("import")
    end
  },


  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    config = function()
      -- require("barbecue").setup()
      require "custom.configs.barbecue"
    end,
    lazy=false,
    enabled = false,
  },
  -- To make a plugin not be loaded
  {
    "NvChad/nvim-colorizer.lua",
    enabled = false
  },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
