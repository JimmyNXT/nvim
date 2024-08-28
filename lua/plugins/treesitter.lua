return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
      },
      auto_install = true,
      indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- },
      },
      highlight = {
        enable = true,
        use_languagetree = true,
      },
    },
    config = function(_, opts)
      local config = require "nvim-treesitter.configs"
      config.setup {opts}
    end,
  },
}
