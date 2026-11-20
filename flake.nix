{
  description = "Home Manager configuration of kirill";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nix-flatpak = {
      url = "github:gmodena/nix-flatpak/?ref=latest";
    };
    nixgl = {
      url = "github:nix-community/nixGL";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    tuicr.url = "github:agavra/tuicr";
    jj-starship = {
      url = "github:dmmulroy/jj-starship";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri-float-sticky = {
      url = "github:probeldev/niri-float-sticky";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    openlogi = {
      url = "github:AprilNEA/OpenLogi?dir=packaging";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    deadband = {
      url = "git+https://codeberg.org/Epaphroditus/gamesir-linux-tools-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixgl,
      home-manager,
      nix-flatpak,
      tuicr,
      jj-starship,
      niri-float-sticky,
      openlogi,
      deadband,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
        overlays = [
          nixgl.overlay
          jj-starship.overlays.default
          self.overlays.default
        ];
      };
      username = "kirill";
    in
    {
      overlays.default = import ./overlay.nix;
      homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        extraSpecialArgs = {
          inherit system;
          inherit username;
          inherit tuicr;
          inherit nixgl;
          inherit niri-float-sticky;
          inherit openlogi;
          inherit deadband;
        };

        modules = [
          nix-flatpak.homeManagerModules.nix-flatpak
          ./nix/home.nix
        ];
      };
    };
}
