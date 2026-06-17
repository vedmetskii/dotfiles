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
  latexPackages = with pkgs; [
    texlive
  ];
  javaLangPackages = with pkgs; [
    javaPackages.compiler.temurin-bin.jdk-26
    gradle
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
    python3Packages.pytest
  ];
  goPackages = with pkgs; [
    go
  ];
  uiPackages = with pkgs; [
    rofi
    awww
    waybar
    swaynotificationcenter
    wlogout
  ];
  phpLangPackages = with pkgs; [
    php82
    php82Packages.composer
    phpstan
    php82Packages.php-codesniffer
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
      ++ aiPackages
      ++ latexPackages
      ++ javaLangPackages;
  };

}
