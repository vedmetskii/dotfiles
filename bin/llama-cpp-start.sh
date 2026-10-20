#!/bin/bash

set -e
set -u
set -o pipefail

main() {
  local models
  models=(
    "unsloth/Qwen3.8-Flash-Next-GGUF:Q8_0"
    "ggml-org/Qwen2.5-Coder-1.5B-Q8_0-GGUF"
  )
  model=$(printf "%s\n" "${models[@]}" | fzf)

  llama-server \
    -hf "$model" --port 8012 -ngl 99 -ub 1024 -b 1024 \
    --ctx-size 0 --cache-reuse 256
}

main
