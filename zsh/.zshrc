# Source all files in ~/.config/zsh/
for sourced_file in $HOME/.config/zsh/*.zsh; do
  source $sourced_file;
done

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh


# bun completions
[ -s "/home/kirill/.bun/_bun" ] && source "/home/kirill/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
