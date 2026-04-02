return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
      -- Inverse search (PDF'den Neovim'e dönüş) için kritik ayar:
      vim.g.vimtex_view_general_viewer = "zathura"
      vim.g.vimtex_compiler_method = "latexmk"
    end,
  },
}
