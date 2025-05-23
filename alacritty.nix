{ config, pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    settings.colors = {
      primary = {
        background = "0x141b1e";
        foreground =  "0xdadada";
      };
      cursor = {
        text = "0xdadada";
        cursor = "0xdadada";
      };
      normal = {
        black =   "0x232a2d";
        red =     "0xe57474";
        green =   "0x8ccf7e";
        yellow =  "0xe5c76b";
        blue =     "0x67b0e8";
        magenta = "0xc47fd5";
        cyan =    "0x6cbfbf";
        white =   "0xb3b9b8";
      };
      bright = {
        black =   "0x2d3437";
        red =     "0xef7e7e";
        green =   "0x96d988";
        yellow =  "0xf4d67a";
        blue =    "0x71baf2";
        magenta = "0xce89df";
        cyan =    "0x67cbe7";
        white =   "0xbdc3c2";
      };
    };
  };
}
