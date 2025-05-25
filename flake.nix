{
  description = "Flake for my system";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    lanzaboote = {
      url = "github:nix-community/lanzaboote/v0.4.2";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, lanzaboote, home-manager, ... }:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      isonix = lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix

          lanzaboote.nixosModules.lanzaboote
          ({ pkgs, libs, ... }: {
            environment.systemPackages = [
              pkgs.sbctl
            ];
            boot.loader.systemd-boot.enable = lib.mkForce false;
            boot.lanzaboote = {
              enable = true;
              pkiBundle = "/var/lib/sbctl";
            };
          })
        ];
      };
    };
    homeConfigurations = {
      abhi = home-manager.lib.homeManagerConfiguration {
        inherit pkgs lib;
        modules = [ ./home.nix ];
      };
    };
  };
}
