return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      -- Enable the LSPs here
      require("lspconfig").lua_ls.setup { capabilities = capabilities }
      require("lspconfig").pyright.setup { capabilities = capabilities }

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end

          if client:supports_method('textDocument/formatting') then
            -- Format the current buffer on save
            vim.api.nvim_create_autocmd('BufWritePre', {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end,
            })
          end
        end,
      })
    end,
    dependencies = {
      -- blink.cmp: autocompletion
      {
        'saghen/blink.cmp',
        dependencies = 'rafamadriz/friendly-snippets',
        version = '*',
        opts = {
          keymap = { preset = 'default' },
          appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
          },
          signature = { enabled = true }
        },
        opts_extend = { "sources.default" }
      },
      -- mason.nvim: lsp installation
      {
        "mason-org/mason.nvim",
        cmd = { "MasonInstallAll" },
        config = function()
          local ensure_installed = {
            -- LSPs
            -- NOTE: SEE LSPCONFIG FOR CALLING THE SETUP
            -- lua-ls handled by lazydev
            "pyright"
          }
          require("mason").setup({
            ensure_installed = ensure_installed,
            max_concurrent_installers = 10,
          })
          -- Install all items in the ensure_installed list
          vim.api.nvim_create_user_command(
            "MasonInstallAll",
            function() vim.cmd("MasonInstall " .. table.concat(ensure_installed, " ")) end,
            {}
          )
        end
      },
      -- lua development support
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
  }
}
