{ config, pkgs, lib, ... }:

{
  imports = [
    ./helix.nix
    ./sh.nix
    ./rofi/rofi.nix
  ];

  home.username = "abhi";
  home.homeDirectory = "/home/abhi";

  home.stateVersion = "24.11";

  home.packages = [
  ];

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
