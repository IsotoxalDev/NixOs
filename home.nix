{ config, pkgs, lib, ... }:

{
  imports = [
    ./helix.nix
    ./sh.nix
    ./rofi/rofi.nix
    ./alacritty.nix
  ];

  home.username = "abhi";
  home.homeDirectory = "/home/abhi";

  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    mpv
    vlc
    motrix
    godot_4
    inkscape
    pavucontrol
  ];

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
