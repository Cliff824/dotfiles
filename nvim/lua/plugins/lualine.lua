local status, lualine = pcall(require, "lualine")
if not status then
   return
end

local seoul256 = require("lualine.themes.seoul256")

lualine.setup({
   options = {
      theme = seoul256
   }
})
