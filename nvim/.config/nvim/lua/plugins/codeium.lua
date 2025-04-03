return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup({})
  end,
  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = { name = "codeium" },
    },
  },
  --{
  -- "LazyVim/LazyVim",
  --opts = {
  -- mapping = {
  --  ["le"] = { "<Plug>(codeium-accept)", mode = "i", desc = "Accept Codeium suggestion" },
  --  ["C-Y"] = { "<Plug>(codeium-cancel)", mode = "i", desc = "Cancel Codeium suggestion" },
  --},
  --},
  --},
}
