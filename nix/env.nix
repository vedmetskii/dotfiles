{ _, ... }:
{
  home = {
    sessionVariables = {
      EDITOR = "nvim";
      STARSHIP_CONFIG = "~/.config/starship/starship.toml";
      PATH = "$PATH:$HOME/.local/share/bin:$HOME/.local/bin";
    };
  };
}
