{ _, ... }:
{
  home = {
    sessionVariables = {
      EDITOR = "nvim";
      PATH = "$PATH:$HOME/.local/share/bin:$HOME/.local/bin";
      TERM = "xterm-256color";
    };
  };
}
