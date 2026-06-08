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
      source <(fzf --zsh)
    '';
    shellAliases = {
      # ls
      ls = "eza --icons --git";
      lt = "eza -long --tree --icons --git";

      # Update zsh config
      upzsh = "source ~/.zshrc";

      # NeoVim
      n = "nvim";

      # rm command with Trash
      rm = "gio trash";

      # Home Manager
      hmb = "home-manager build";
      hms = "home-manager switch";
      hmbf = "home-manager build --flake .";
      hmsf = "home-manager switch --flake .";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [
        "terraform"
        "git"
        "z"
        "helm"
        "jj"
        "kubectl"
      ];
    };
  };
}
