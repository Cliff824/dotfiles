require('Comment').setup()

require('harpoon').setup()

require("oil").setup({
  default_file_explorer = true
})

require('blink.cmp').setup({
  fuzzy = { implementation = "prefer_rust_with_warning" }
})

