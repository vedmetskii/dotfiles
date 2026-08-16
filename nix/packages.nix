{
  pkgs,
  tuicr,
  system,
  ...
}:
let
  llvmPkgs = pkgs.llvmPackages_18;
  corePackages = with pkgs; [
    zsh
    neovim
    zellij
    fastfetch
    onefetch
    starship
    htop
    just
    flatpak
  ];
  latexPackages = with pkgs; [
    texliveSmall
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
    glab
    gh
    jujutsu
    jj-starship
  ];
  securitePackages = with pkgs; [
    netcat
    nmap
    clamav
    gobuster
    hadolint
    trivy
    dive
  ];
  devopsPackages = with pkgs; [
    k6
    kubernetes-helm
    helmfile
    argocd
    opentofu
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
    kando
  ];
  phpLangPackages = with pkgs; [
    php83
    php83Packages.composer
    phpstan
    php83Packages.php-codesniffer
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
    corefonts
  ];
  aiPackages = with pkgs; [
    opencode
    llama-cpp
  ];
  additionsPackagesFromFlakes = [
    tuicr.packages.${system}.default
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
      ++ javaLangPackages
      ++ additionsPackagesFromFlakes;
  };
}
