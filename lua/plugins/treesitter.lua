return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local ts = require("vim.treesitter")

      local languages = {
        -- Systems / compiled languages
        "c",
        "cpp",
        "rust",
        "go",

        -- Web / Full‑stack languages
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "php",
        "graphql",
        "svelte",
        "astro",
        "scss",
        "sql",

        -- Scripting / tooling
        "bash",
        "lua",
        "json",
        "json5",
        "markdown",
        "markdown_inline",
        "vim",
        "vimdoc",
        "yaml",
        "toml",

        -- Useful extra languages
        "python",
        "dockerfile",
        "cmake",
        "make",
        "gitignore",
      }

      -- install parsers for all languages
      pcall(require("nvim-treesitter.install").ensure_installed, languages)

      -- enable highlighting per buffer
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "*",
        callback = function()
          pcall(ts.start) -- start treesitter for the buffer
        end,
      })
    end,
  },
}
