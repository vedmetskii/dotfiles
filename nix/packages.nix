{
  pkgs,
  ...
}:
let
  llvmPkgs = pkgs.llvmPackages_18;
  corePackages = with pkgs; [
    zsh
    neovim
    zellij
    starship
    htop
    just
  ];
  termUtilsPackages = with pkgs; [
    ripgrep
    stow
    yq
    zoxide
    bat
    eza
    fzf

  ];
  jsPackages = with pkgs; [
    nodejs
    pnpm
    yarn
  ];
  gitPackages = with pkgs; [
    git
    delta
    jujutsu
  ];
  securitePackages = with pkgs; [
    netcat
    nmap
  ];
  devopsPackages = with pkgs; [
    helm
    terraform
  ];
  pythonPackages = with pkgs; [
    uv
    python3
  ];
  goPackages = with pkgs; [
    go
  ];
  uiPackages = with pkgs; [
    alacritty
    niri
    rofi
    waybar
    swaynotificationcenter
    wlogout
  ];
  phpLangPackages = with pkgs; [
    php
    phpPackages.composer
    phpstan
  ];
  cPackages = with pkgs; [
    gnumake
    clang
    llvmPkgs.clang-tools
    cmake
  ];
  rustPackages = with pkgs; [
    rustc
    rustup
  ];
  fontsPackages = with pkgs; [
    nerd-fonts.meslo-lg
  ];
  aiPackages = with pkgs; [
    opencode
  ];
in
{
  home = {

    packages =
      corePackages
      ++ cPackages
      ++ phpLangPackages
      ++ termUtilsPackages
      ++ rustPackages
      ++ uiPackages
      ++ goPackages
      ++ pythonPackages
      ++ gitPackages
      ++ securitePackages
      ++ devopsPackages
      ++ jsPackages
      ++ fontsPackages
      ++ aiPackages;
  };

}
