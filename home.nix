{ config, pkgs, lib, ... }:

{
  imports = [
    ./helix.nix
    ./sh.nix
    ./rofi/rofi.nix
    ./alacritty.nix
  ];

  programs.git = {
    enable = true;
    userName = "Abhinav Kuruvila Joseph";
    userEmail = "62714538+IsotoxalDev@users.noreply.github.com";
  };

  dconf.settings = {
    "org/gnome/desktop/background" = {
      picture-uri-dark = "file://${pkgs.nixos-artwork.wallpapers.nineish-dark-gray.src}";
    };
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };

  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome.gnome-themes-extra;
    };
  };

  home.username = "abhi";
  home.homeDirectory = "/home/abhi";

  home.stateVersion = "24.11";

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    mpv
    vlc
    motrix
    feh
    godot_4
    inkscape
    pavucontrol
  ];

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
