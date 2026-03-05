require("oil").setup({
  default_file_explorer = true,
  delete_to_trash = true,
  watch_for_changes = true,
  view_options = {
    show_hidden = true
  }
})

require('blink.cmp').setup({
  fuzzy = { implementation = "prefer_rust_with_warning" }
})

