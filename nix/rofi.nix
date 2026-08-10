{ pkgs, ... }: {
  programs.rofi = {
    enable = true;
    plugins = [ pkgs.rofi-calc ];
    theme = "catppiccin-macchiato";
  };
}
