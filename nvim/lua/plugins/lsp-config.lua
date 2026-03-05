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
          },
        },
        keys = {
          {
            "<leader>co",
            LazyVim.lsp.action["source.organizeImports"],
            desc = "Organize Imports",
          },
        },
      },
      ruff_lsp = {
        keys = {
          {
            "<leader>co",
            LazyVim.lsp.action["source.organizeImports"],
            desc = "Organize Imports",
          },
        },
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
          "/home/linuxbrew/.linuxbrew/bin/clangd",
          -- "clangd",
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
