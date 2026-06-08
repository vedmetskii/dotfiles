{ _, ... }:
{
  home = {
    file = {
      "wallpapers".source = ../wallpapers;
      ".config/nvim".source = ../nvim;
      ".config/zellij".source = ../zellij;
      ".config/starship".source = ../starship;
      ".config/rofi".source = ../rofi;
      ".config/swaync".source = ../swaync;
      ".config/alacritty".source = ../alacritty;
      ".config/wlogout".source = ../wlogout;
      ".config/waybar".source = ../waybar;
      ".config/niri".source = ../niri;
      "/.local/share/bin".source = ../bin;
    };
  };
}
