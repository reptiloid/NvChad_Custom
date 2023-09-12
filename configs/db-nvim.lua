local status_ok, db = pcall(require, "dashboard")
if not status_ok then
  return
end



db.setup({
  theme = 'hyper',
  config = {
    disable_move = false,
    week_header = { enable = true, },
    shortcut = {
      { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        desc = ' Sessions',
        group = 'DiagnosticHint',
        action = 'SessionManager load_session',
        key = 's',
      },
      {
        desc = ' Last session',
        group = 'Number',
        action = 'SessionManager load_last_session',
        key = 'l',
      },
    },
  },
})
