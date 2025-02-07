local status, toggleterm = pcall(require, "toggleterm")
if not status then
   return
end

toggleterm.setup{
   start_in_insert = true
}

