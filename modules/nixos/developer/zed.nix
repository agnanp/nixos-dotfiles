{ config, lib, pkgs, ... }:

  {
    options.developer.zed.enable = lib.mkEnableOption "Zed editor";

    config = lib.mkIf config.developer.zed.enable {
      environment.systemPackages = with pkgs; [
        zed-editor-fhs
      ];
    };
  }
