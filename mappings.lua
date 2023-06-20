---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<C-j>"] = { ":bprevious<CR>", "BufPrevious" },
    ["<C-k>"] = { ":bnext<CR>", "BufNext" },

    ["<C-f>"] = { "<cmd>Telescope aerial <CR>", "Aerial" },

    ["<S-h>"] = { "^", "Start of the line" },
    ["<S-l>"] = { "$", "End of the line" },

    ["g<C-o>"] = { "o<ESC>k", "k new line" },
    ["gO"] =     { "O<ESC>j", "j new line" },

    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "LazyGit" },

    ["<leader>b"] = { "<cmd> Telescope buffers <CR>", "Buffers" },
    ["<leader>n"] = { "<cmd> Dashboard <CR>", "DashBoard" },
    ["<leader>ss"] = { "<cmd> SessionManager load_session<CR>", "Select Session to Load" },
    ["<leader>sl"] = { "<cmd> SessionManager load_last_session<CR>", "Load Last Session" },
  },
}
-- keymap("n", "<C-f>", ":Telescope aerial<CR>", opts)
-- keymap("n", "<C-b>", ":Telescope current_buffer_fuzzy_find<CR>", opts)
    -- dashboard.button("s", "  Sessions", ":SessionManager load_session<CR>"),
    -- dashboard.button("l", "  Last Session", ":SessionManager load_last_session<CR>"),
-- 
-- more keybinds!

return M
