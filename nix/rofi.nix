{ pkgs, ... }: {
  programs.rofi = {
    enable = true;
    plugins = [ pkgs.rofi-calc ];
    theme = "catppuccin-macchiato";
  };
}
