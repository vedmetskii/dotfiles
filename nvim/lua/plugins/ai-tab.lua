return {
  "milanglacier/minuet-ai.nvim",
  config = function()
    require("minuet").setup({
      auto_trigger_ft = { "*" },
      keymap = {
        -- accept whole completion
        accept = "<A-A>",
        -- accept one line
        accept_line = "<A-a>",
        -- accept n lines (prompts for number)
        -- e.g. "A-z 2 CR" will accept 2 lines
        accept_n_lines = "<A-z>",
        -- Cycle to prev completion item, or manually invoke completion
        prev = "<A-[>",
        -- Cycle to next completion item, or manually invoke completion
        next = "<A-]>",
        dismiss = "<A-e>",
      },
      provider = "openai_compatible",
      provider_options = {
        openai_compatible = {
          model = "qwen/qwen3-coder-next",
          stream = true,
          end_point = "https://routerai.ru/api/v1/chat/completions",
          api_key = "ROUTERAI_API_KEY",
          name = "RouterAI",
        },
      },
    })
  end,
}
