return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = false,
    },
    servers = {
      texlab = {
        build = {
          args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
          executable = "latexmk",
        },
      },
      tailwindcss = {
        filetypes_include = {
          "javascriptreact",
          "javascript.jsx",
          "typescriptreact",
          "typescript.tsx",
          "vue",
          "css",
          "astro",
        },
      },
      php = {
        cmd = { "phpantom_lsp" },
        filetypes = { "php" },
        root_markers = { ".phpantom.toml", "composer.json" },
      },
      pyright = {
        filetypes = { "python" },
        cmd = { "pyright-langserver", "--stdio" },
        root_markers = { "pyproject.toml", ".venv" },
      },
      ruff = {
        filetypes = { "python" },
        cmd = {
          "ruff",
          "server",
        },
        settings = {
          lint = {
            preview = true,
            select = { "ALL" },
            ignore = { "A003", "D", "COM812", "S101" },
          },
          format = {
            preview = true,
            backend = "uv",
          },
        },
        cmd_env = { RUFF_TRACE = "messages" },
        init_options = {
          settings = {
            logLevel = "error",
            lint = {
              preview = true,
              select = { "ALL" },
              ignore = { "A003", "D", "COM812", "S101" },
            },
            format = {
              preview = true,
              backend = "uv",
            },
          },
        },
        -- keys = {
        --   {
        --     "<leader>co",
        --     LazyVim.lsp.action["source.organizeImports"],
        --     desc = "Organize Imports",
        --   },
        -- },
        root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git" },
      },
      emmet_ls = {},
      html = {},
      yamlls = {
        filetypes = { "yaml", "yaml.docker-compose", "yaml.gitlab" },
        capabilities = {
          textDocument = {
            foldingRange = {
              dynamicRegistration = false,
              lineFoldingOnly = true,
            },
          },
        },
        settings = {
          redhat = { telemetry = { enabled = false } },
          yaml = {
            keyOrdering = false,
            format = {
              enable = true,
            },
            validate = true,
            customTags = {
              "!reference sequence",
            },
          },
        },
      },
      gitlab_ci_ls = {
        filetypes = { "yaml.gitlab" },
        cmd = {
          "gitlab-ci-ls",
        },
        init_options = {
          cache_path = "/home/kirill/.cache/gitlab-ci-ls/",
          log_path = "/home/kirill/.cache/gitlab-ci-ls/log/gitlab-ci-ls.log",
        },
      },
      clangd = {
        root_markers = {
          ".clangd",
          ".clang-tidy",
          ".clang-format",
          "compile_commands.json",
          "compile_flags.txt",
          "configure.ac",
          "conanfile.py",
          ".git",
        },
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
        capabilities = {
          offsetEncoding = { "utf-16" },
        },
        cmd = {
          "clangd",
          "--fallback-style=webkit",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders=true",
          -- "--fallback-style=google",
        },
      },
    },
  },
}
