{ _, ... }:
{
  home = {
    file = {
      "wallpapers".source = ../wallpapers;
      ".config/nvim".source = ../nvim;
      ".config/zellij".source = ../zellij;
      ".local/share/rofi/themes".source = ../rofi-themes;
      # ".config/alacritty".source = ../alacritty;
      ".config/niri".source = ../niri;
      ".config/containers".source = ../containers;
      ".local/share/bin".source = ../bin;
    };
  };
}
