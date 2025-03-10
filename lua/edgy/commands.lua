local Editor = require("edgy.editor")

---@class Edgy.Commands
local M = {}

M.goto_main = Editor.goto_main
M.get_win = Editor.get_win
M.close = Editor.close
M.open = Editor.open
M.toggle = Editor.toggle
M.select = Editor.select

function M.toggle_file_type_view()
  local Config = require("edgy.config")
  Config.enable_file_type_view = not Config.enable_file_type_view
  require("edgy.layout").update()
end

return M
