export PATH="$PATH:$HOME/.local/share/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.bun/bin"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"
eval "$(zoxide init zsh --cmd cd)"
source <(fzf --zsh)
