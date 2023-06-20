local opt = vim.opt

opt.relativenumber = true
local dark0 = "#282828"
local gray0 = "#928374"
local neutral_red = "#cc241d"
local bright_red = "#fb4934"
local neutral_green = "#98971a"
local bright_green = "#b8bb26"
local neutral_yellow = "#d79921"
local bright_yellow = "#fabd2f"
local neutral_blue = "#458588"
local bright_blue = "#83a598"
local neutral_purple = "#b16286"
local bright_purple = "#d3869b"
local neutral_aqua = "#689d6a"
local bright_aqua = "#8ec07c"
local light4 = "#a89984"
local light1 = "#ebdbb2"

vim.g.terminal_color_0 = dark0
vim.g.terminal_color_8 = gray0
vim.g.terminal_color_1 = neutral_red
vim.g.terminal_color_9 = bright_red
vim.g.terminal_color_2 = neutral_green
vim.g.terminal_color_10 = bright_green
vim.g.terminal_color_3 = neutral_yellow
vim.g.terminal_color_11 = bright_yellow
vim.g.terminal_color_4 = neutral_blue
vim.g.terminal_color_12 = bright_blue
vim.g.terminal_color_5 = neutral_purple
vim.g.terminal_color_13 = bright_purple
vim.g.terminal_color_6 = neutral_aqua
vim.g.terminal_color_14 = bright_aqua
vim.g.terminal_color_7 = light4
vim.g.terminal_color_15 = light1

-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
