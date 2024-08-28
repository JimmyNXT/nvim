return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require "lspconfig"

      lspconfig.tsserver.setup {
        capabilities = capabilities,
      }

      lspconfig.solargraph.setup {
        capabilities = capabilities,
      }

      lspconfig.html.setup {
        capabilities = capabilities,
      }

      lspconfig.lua_ls.setup {
        capabilities = capabilities,
      }

      lspconfig.clangd.setup {
        capabilities = capabilities,
        filetypes = { "c", "cpp" },
        root_dir = lspconfig.util.root_pattern(".git", "compile_commands.json"),
      }

      lspconfig.pyright.setup {
        capabilities = capabilities,
        filetypes = { "python" },
      }

      lspconfig.marksman.setup {
        capabilities = capabilities,
        filetypes = { "markdown", "markdown.mdx" },
      }

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
