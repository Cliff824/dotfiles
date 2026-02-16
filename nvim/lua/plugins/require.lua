require('Comment').setup()

require('harpoon').setup()

require("oil").setup({
  default_file_explorer = true
})

require('lualine').setup({
   options = {
      theme = require("lualine.themes.everforest")
   }
})

require('blink.cmp').setup({
  fuzzy = { implementation = "prefer_rust_with_warning" }
})
