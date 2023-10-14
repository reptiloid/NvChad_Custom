local M = {}
-- local actions = require "telescope.actions"

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "python",
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
  extensions_list = { "themes", "terms", "aerial", "import", "yank_history", },
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
  update_focused_file = {
    enable = true,
    update_root = true,
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
