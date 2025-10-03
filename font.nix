{ config, pkgs, ... }:
{
  fonts.fontDir.enable = true;
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    fantasque-sans-mono
    #(nerdfonts.override { fonts = [ "Iosevka" ]; })
    nerd-fonts.iosevka
    font-awesome
  ];
}
