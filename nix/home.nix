{
  username,
  ...
}:

{
  imports = [
    ./packages.nix
    ./zsh.nix
    ./configfiles.nix
    ./env.nix
    ./git.nix
    ./flatpak.nix
    ./starship.nix
    ./rofi.nix
    ./alacritty.nix
  ];
  home = {
    # Home Manager needs a bit of information about you and the paths it should
    # manage.
    inherit username;
    homeDirectory = "/home/${username}";

    stateVersion = "26.05"; # Please read the comment before changing.
  };

  fonts.fontconfig.enable = true;

  programs.home-manager.enable = true;
}
