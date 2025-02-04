vim.g.arduino_cmd = '/usr/bin/arduino-cli'
vim.g.arduino_use_cli = 1
vim.g.arduino_auto_baud = 1
vim.g.arduino_build_path= '/home/cliff824/Documents/code/Arduino'

local function arduino_status()
  if vim.bo.filetype ~= "arduino" then
    return ""
  end
  local port = vim.fn["arduino#GetPort"]()
  local line = string.format("[%s]", vim.g.arduino_board)
  if vim.g.arduino_programmer ~= "" then
    line = line .. string.format(" [%s]", vim.g.arduino_programmer)
  end
  if port ~= 0 then
    line = line .. string.format(" (%s:%s)", port, vim.g.arduino_serial_baud)
  end
  return line
end
