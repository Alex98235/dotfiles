-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--------------------------
-- Helix-like behaviour --
--------------------------

-- Extend selection to next line

vim.keymap.set({ "v", "n" }, "x", function()
  -- If already in Visual Line mode, extend selection downward
  if vim.fn.mode() == "V" then
    vim.api.nvim_feedkeys("j", "n", false)
  else
    -- Otherwise, enter Visual Line mode
    vim.api.nvim_feedkeys("V", "n", false)
  end
end, { desc = "Toggle Visual Line mode or extend selection" })

-- Change redo to shift-u (any sane human would bind it as such)
vim.keymap.set("n", "U", "<C-r>", { desc = "Redo" })

-- close buffer with :bc (buffer close)
vim.keymap.del("n", "<leader>bd")
vim.keymap.set("n", "<leader>bc", "<cmd>bdelete<cr>", { desc = "Buffer close" })

-- close buffer after writing
vim.keymap.set("n", "wbc", function()
  vim.api.nvim_feedkeys("w", "n", false)
  vim.api.nvim_feedkeys("<cmd>bdelete<cr>", "n", false)
end, { desc = "Write buffer close" })

-- Buffer navigation
vim.keymap.set("n", "gn", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "gp", ":bprev<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bc", ":bdelete<CR>", { desc = "Close buffer" })
-- buffer close others should be here... no elegant solution for now
-- TODO: wbc "write buffer close"

-- Cursor commands
-- handled through vim-visual-multi
-- add cursor below = <S-c>
-- collapse cursors = <Esc> (Default)
