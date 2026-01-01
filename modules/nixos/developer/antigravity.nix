{ config, lib, pkgs, ... }:

  {
    options.developer.antigravity.enable = lib.mkEnableOption "Antigravity editor";

    config = lib.mkIf config.developer.antigravity.enable {
      environment.systemPackages = with pkgs; [
        antigravity-fhs
      ];
    };
  }
