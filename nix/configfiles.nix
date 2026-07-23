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
      ".config/niri-quickshell".source = ../niri-quickshell;
      ".config/secrets".source = ../secrets;
      "/.local/share/bin".source = ../bin;
    };
  };
}
