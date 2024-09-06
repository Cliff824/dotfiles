local status, toggleterm = pcall(require, "toggleterm")
if not status then
   return
end

toggleterm.setup{
   start_in_insert = true
   }


vim.keymap.set("n", "<leader>vt", ":ToggleTerm<CR>")
vim.keymap.set("n", "<leader>vtc", ":TermExec cmd='gcc main.c && ./a.out'<CR>")
