local config = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  filter = {
    dotfiles = true,
  },
  view = {
    preserve_window_proportions = false,
  },
}

return config
