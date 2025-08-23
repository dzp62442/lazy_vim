return {
    -- gruvbox
    { "ellisonleao/gruvbox.nvim", lazy = false, priority = 1000 },
    { "joshdick/onedark.vim", lazy = false, priority = 1000 },
  
    -- 配置 LazyVim 默认主题（原生默认 tokyonight）
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "gruvbox",
      },
    },
  }