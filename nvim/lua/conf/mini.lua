require('mini.surround').setup({
  mappings = {
    add = 'sa', -- Add surrounding in Normal and Visual modes
    delete = 'sd', -- Delete surrounding
    find = 'sf', -- Find surrounding (to the right)
    find_left = 'sF', -- Find surrounding (to the left)
    highlight = 'sh', -- Highlight surrounding
    replace = 'sr', -- Replace surrounding
  }
})

require('mini.pick').setup({
  window = {
    config = function()
      local width = math.floor(vim.o.columns * 0.8)
      local height = math.floor(vim.o.lines * 0.6)
      return {
        relative = 'editor',
        width = width,
        height = height,
        row = math.floor((vim.o.lines - height) / 2),
        col = math.floor((vim.o.columns - width) / 2),
        anchor = 'NW',
        style = 'minimal',
        border = 'rounded',
      }
    end,
  },
})
vim.ui.select = require('mini.pick').ui_select

require('mini.comment').setup()

require('mini.icons').setup()

require('mini.statusline').setup()


