{ config, pkgs, ... }:
{
  programs.helix = {
    enable = true;
    settings = {
      theme = "everblush";
      editor = {
        line-number = "relative";
        true-color = true;
        mouse=false;
        middle-click-paste = false;
        shell = ["zsh"];
        cursor-shape.insert = "bar";
        whitespace.render.newline = "all";
      };
    };
  };
}
