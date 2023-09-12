-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Search = {
    italic = true,
    bold = true,
    bg = "#612939",
    fg = "#f0f600"
  },
  Comment = {
    italic = true,
  },
  Folded = {
    italic = true,
    bg = "black2",
    fg = "grey_fg2",
  },
  NvDashAscii = {
    bg = "none",
    fg = "blue",
  },

  NvDashButtons = {
    bg = "none",
    fg = "light_grey",
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}


return M
