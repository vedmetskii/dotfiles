{ pkgs, ... }: {
  programs.rofi = {
    enable = true;
    plugins = [ pkgs.rofi-calc ];
    theme = ../rofi-themes/catpuccin-macchiato.rasi;
  };
}
