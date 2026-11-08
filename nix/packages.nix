{
  pkgs,
  tuicr,
  system,
  niri-float-sticky,
  ...
}:
let
  llvmPkgs = pkgs.llvmPackages_18;
  virtPackages = with pkgs; [
    qemu
    quickemu
    qemu_kvm
    gnome-boxes
    virt-manager
  ];
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
    # javaPackages.compiler.temurin-bin.jdk-26
    jdk8
    gradle
    jdt-language-server
    lombok
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
    vtsls
    typescript-language-server
    typescript
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
    podman
    podman-compose
    skopeo
    container-structure-test
    httpie
    ansible
  ];
  pythonPackages = with pkgs; [
    uv
    ruff
    python3
    python3Packages.pytest
    mypy
  ];
  goPackages = with pkgs; [
    go
  ];
  uiPackages = with pkgs; [
    kando
  ];
  phpLangPackages = with pkgs; [
    php82
    php82Packages.composer
    phpstan
    php82Packages.php-codesniffer
    phpantom-lsp
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
    nerd-fonts.fira-code
    corefonts
  ];
  aiPackages = with pkgs; [
    opencode
    llama-cpp
  ];
  additionsPackagesFromFlakes = [
    tuicr.packages.${system}.default
    niri-float-sticky.packages.${system}.default
  ];
  idePackages = with pkgs; [
    vscode
  ];
in
{
  home = {
    packages =
      corePackages
      ++ virtPackages
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
      ++ idePackages
      ++ additionsPackagesFromFlakes;
  };
}
