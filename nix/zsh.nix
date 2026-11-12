{
  pkgs,
  ...
}:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    plugins = [
      {
        name = "zsh-fzf-history-search"; # Name must match the plugin directory/file
        file = "zsh-fzf-history-search.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "joshskidmore";
          repo = "zsh-fzf-history-search";
          rev = "master";
          sha256 = "sha256-6UWmfFQ9JVyg653bPQCB5M4jJAJO+V85rU7zP4cs1VI=";
        };
      }
    ];
    initContent = ''
      eval "$(starship init zsh)"
      eval "$(zoxide init zsh --cmd cd)"
      eval "$(direnv hook zsh)"
      source <(fzf --zsh)
      source <(glab completion -s zsh)
      if [ -f "$HOME/.config/secrets/.env" ]; then
        source "$HOME/.config/secrets/.env"
      fi
      export LD_LIBRARY_PATH="${pkgs.libGL}/lib:$LD_LIBRARY_PATH"
      source ~/.env_vars
    '';
    shellAliases = {
      # ls
      ls = "eza --icons --git";
      lt = "eza -long --tree --icons --git";

      j = "just";

      zellij = "zellij attach --create main";
      z = "zellij";

      # Update zsh config
      upzsh = "source ~/.config/zsh/.zshrc";

      # NeoVim
      n = "nvim";

      # rm command with Trash
      rm = "gio trash";

      # Home Manager
      hmb = "home-manager build";
      hms = "home-manager switch";
      hmbf = "home-manager build --flake .";
      hmsf = "home-manager switch --flake .";

      ssh-config = "nvim ~/.ssh/";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [
        "terraform"
        "git"
        # "z"
        "helm"
        "jj"
        "kubectl"
        "eza"
        "yii2"
        "podman"
        "vi-mode"
      ];
    };
  };
}
