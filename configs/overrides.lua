local M = {}
-- local actions = require "telescope.actions"

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.telescope = {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
      },
    },
  },
  extensions_list = { "themes", "terms", "aerial", },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",
  },
}

-- git support in nvimtree
M.nvimtree = {
  filters = {
    exclude = {"custom"},
  },
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
