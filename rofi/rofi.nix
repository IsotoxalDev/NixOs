{ config, pkgs, lib, ... }:
{
  programs.rofi = {
    enable = true;
    theme = ./launcher.rasi;
  };
}
