return {
  "milanglacier/minuet-ai.nvim",
  config = function()
    require("minuet").setup({
      blink = {
        enable = false,
      },
      virtualtext = {
        auto_trigger_ft = { "*" },
        keymap = {
          accept = "<A-A>",
          accept_line = "<A-a>",
          accept_n_lines = "<A-z>",
          prev = "<A-[>",
          next = "<A-]>",
          dismiss = "<A-e>",
        },
      },
      provider = "openai_fim_compatible",
      n_completions = 1,
      context_window = 256,
      provider_options = {
        openai_fim_compatible = {
          api_key = "TERM",
          name = "Ollama",
          end_point = "http://localhost:11434/v1/completions",
          model = "qwen2.5-coder:3b",
          optional = {
            max_tokens = 56,
            top_p = 0.9,
          },
        },
      },
    })
  end,
}
