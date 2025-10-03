{ config, pkgs, lib, ... }:

{
  imports = [
    ./helix.nix
    ./sh.nix
    ./rofi/rofi.nix
    ./alacritty.nix
  ];

  nixpkgs.config.allowUnfree = true;

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
      package = pkgs.gnome-themes-extra;
    };
  };

  home.username = "abhi";
  home.homeDirectory = "/home/abhi";

  home.stateVersion = "24.11";


  home.packages = with pkgs; [
    mpv
    vlc
    fd
    motrix
    wayvnc
    feh
    godot_4
    immich
    blender
    gimp
    lutris
    grim
    slurp
    trelby
    chromium
    arduino-ide
    vscode
    onlyoffice-desktopeditors
    virtualbox
    starc
    openrocket
    rpi-imager
    audacity
    syncthing
    inkscape
    kdePackages.kdenlive
    pavucontrol
    protonup
    obs-studio
    telegram-desktop
    zathura
  ];

  home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${Home}/.steam/root/compatibilitytools.d";
  };

  programs.home-manager.enable = true;
}
