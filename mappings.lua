---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts={ nowait=true }},

    ["<C-j>"] = { ":bprevious<CR>", "BufPrevious" },
    ["<C-k>"] = { ":bnext<CR>", "BufNext" },

    ["<C-f>"] = { "<cmd> Telescope aerial <CR>", "Aerial" },
    ["<C-b>"] = { "<cmd> Telescope buffers <CR>", "Buffers" },
    ["<C-p>"] = { "<cmd> Telescope yank_history <CR>", "Yank History" },
    [";"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Buffer Fuzzy Find" },
    -- ["p"] = { "<Plug>(YankyPutAfter)", "yanky put after" },
    -- ["P"] = { "<Plug>(YankyPutBefore)", "yanky put before" },
    -- ["<C-n>"] = { "<Plug>(YankyCycleForward)", "yanky cycle forward" },
    -- ["<C-p>"] = { "<Plug>(YankyCycleBackward)", "yanky cycle backward" },

    -- ["<S-h>"] = { "^", "Start of the line" },

    ["H"] = { "^", "Start of the line" },
    ["L"] = { "$", "End of the line" },
    ["gh"] = { "^", "Start of the line" },
    ["gl"] = { "$", "End of the line" },

    ["g<C-o>"] = { "o<ESC>k", "k new line" },
    ["gO"] =     { "O<ESC>j", "j new line" },

    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "LazyGit" },
    ["<leader>bb"] = { "<cmd> Telescope buffers <CR>", "Buffers" },

    ["<leader>ii"] = { "<cmd> Telescope import <CR>", "Imports" },

    -- ["<leader>n"] = { "<cmd> Telescope yank_history <CR>", "Yank History" },
    -- ["<leader>N"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    ["<leader>ss"] = { "<cmd> SessionManager load_session<CR>", "Select Session to Load" },
    ["<leader>sl"] = { "<cmd> SessionManager load_last_session<CR>", "Load Last Session" },

    ["<leader>sw"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search current word" },
    -- ["<C-x>"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search current word" },
  },
}

return M
