return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.routes = opts.routes or {}

      table.insert(opts.routes, {
        filter = {
          event = "notify",
          kind = "info",
          any = {
            { find = "Neo%-tree INFO] Toggling hidden files" },
            { find = "No information available" },
          },
        },
        opts = { skip = true },
      })

      -- Enable border on notify box
      -- opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },

  -- bufferline
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "buffers",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "solarized_dark",
      },
    },
  },

  -- filename
  {
    "b0o/incline.nvim",
    event = "VeryLazy",
    priority = 1200,
    config = function()
      require("incline").setup({
        window = {
          margin = { vertical = 0, horizontal = 1 },
          winhighlight = {
            Normal = "Normal",
            NormalNC = "Normal",
          },
        },

        hide = {
          cursorline = true,
        },

        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")

          if vim.bo[props.buf].modified then
            filename = "[+]" .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)

          return {
            { icon, guifg = color },
            { " " },
            { filename },
          }
        end,
      })
    end,
  },
}
