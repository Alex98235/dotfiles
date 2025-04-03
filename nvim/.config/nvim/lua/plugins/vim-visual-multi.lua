return {
  {
    "mg979/vim-visual-multi",
    lazy = false,
    init = function()
      vim.g.VM_maps = {
        ["Add Cursor Down"] = "<S-c>", -- Shift + c
      }
    end,
  },
}
