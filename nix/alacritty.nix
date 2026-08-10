{ _, ... }:
{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        padding = {
          x = 15;
          y = 15;
        };
        dynamic_padding = true;
        opacity = 0.95;
        title = "Alacritty term";
      };

      font = {
        normal = {
          family = "MesloLGS Nerd Font";
        };
        size = 12;
      };
      colors = {
        primary = {
          background = "#232627";
          foreground = "#fcfcfc";

          dim_foreground = "#eff0f1";
          bright_foreground = "#ffffff";
        };

        normal = {
          black = "#232627";
          red = "#ed1515";
          green = "#11d116";
          yellow = "#f67400";
          blue = "#1d99f3";
          magenta = "#9b59b6";
          cyan = "#1abc9c";
          white = "#fcfcfc";
        };

        bright = {
          black = "#7f8c8d";
          red = "#c0392b";
          green = "#1cdc9a";
          yellow = "#fdbc4b";
          blue = "#3daee9";
          magenta = "#8e44ad";
          cyan = "#16a085";
          white = "#ffffff";
        };

        dim = {
          black = "#31363b";
          red = "#783228";
          green = "#17a262";
          yellow = "#b65619";
          blue = "#1b668f";
          magenta = "#614a73";
          cyan = "#186c60";
          white = "#63686d";
        };
      };
    };
  };
}
