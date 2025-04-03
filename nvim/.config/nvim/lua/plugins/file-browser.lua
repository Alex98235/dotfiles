return {
  "nvim-telescope/telescope-file-browser.nvim",
  keys = {
    { "<leader>sB", ":telescope-file-browser path=%:p:h=%:p:h<cr>", desc = "Browse Files" },
  },
  config = function()
    require("telescope").load_extension("file_browser")
  end,
}
