{ config, pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    fantasque-sans-mono
    (nerdfonts.override { fonts = [ "Iosevka" ]; })
    iosevka
    font-awesome
  ];
}
