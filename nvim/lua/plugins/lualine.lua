local status, lualine = pcall(require, "lualine")
if not status then
   return
end

local seoul256 = require("lualine.themes.seoul256")
local everforest = require("lualine.themes.everforest")

lualine.setup({
   options = {
      theme = everforest
   }
})
