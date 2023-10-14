local status_ok, yanky = pcall(require, "yanky")
if not status_ok then
  return
end

local utils = require("yanky.utils")
local mapping = require("yanky.telescope.mapping")

yanky.setup({
  ring = {
    history_length = 33,
    storage = "shada",
    sync_with_numbered_registers = true,
    cancel_event = "update",
    ignore_registers = { "_" },
  },
  system_clipboard = {
    sync_with_ring = true,
  },

  highlight = {
    on_put = true,
    on_yank = true,
    timer = 155,
  },

  picker = {
    telescope = {
      mappings = {
        default = mapping.put("p"),
        i = {
          ["<c-k>"] = require("telescope.actions").move_selection_previous,
          ["<c-g>"] = mapping.put("p"),
          ["<c-u>"] = mapping.put("P"),
          ["<c-x>"] = mapping.delete(),
          ["<c-r>"] = mapping.set_register(utils.get_default_register()),
        },
        n = {
          p = mapping.put("p"),
          P = mapping.put("P"),
          d = mapping.delete(),
          r = mapping.set_register(utils.get_default_register())
        },
      }
    }
  },

})
