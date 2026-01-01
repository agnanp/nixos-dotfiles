{ config, pkgs, ... }:

{
  imports = [
    ./../../modules/home-manager/terminals/kitty.nix
    ./../../modules/home-manager/terminals/zsh-powerlevel10k.nix
    ];
  
  # Enable modules
  kitty.enable = true;
  zsh-powerlevel10k.enable = true;

  home.username = "nan";
  home.homeDirectory = "/home/nan";

  home.stateVersion = "25.11"; # Please read the comment before changing.

  home.packages = [
  ];

  home.file = {

  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.btop = {
    enable = true;
    settings = {
      color_theme = "gruvbox_dark_v2";
      vim_keys = true;
    };
  };
}
