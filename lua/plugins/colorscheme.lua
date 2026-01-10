local transparent_opts = {
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
}

return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = transparent_opts,
  },

  {
    "oskarnurm/koda.nvim",
    lazy = false,
    opts = transparent_opts,
  },

  {
    "vague-theme/vague.nvim",
    lazy = false,
    opts = transparent_opts,
  },

  {
    "tiagovla/tokyodark.nvim",
    lazy = false,
  },

  {
    "rose-pine/neovim",
    lazy = false,
    name = "rose-pine",
    opts = transparent_opts,
  },
}
