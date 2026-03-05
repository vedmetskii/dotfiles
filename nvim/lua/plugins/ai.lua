return {
  "yetone/avante.nvim",
  opts = {
    provider = "ollama",
    providers = {
      ollama = {
        model = "codellama:7b",
        is_env_set = require("avante.providers.ollama").check_endpoint_alive,
      },
    },
    selection = {
      hint_display = "none",
    },
    behaviour = {
      auto_set_keymaps = false,
    },
  },
}
