{
  description = "Home Manager configuration of kirill";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      nix-flatpak,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
      };
      username = "kirill";
    in
    {
      homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        extraSpecialArgs = {
          inherit username;
        };

        modules = [
          nix-flatpak.homeManagerModules.nix-flatpak
          ./nix/home.nix
        ];
      };
    };
}
