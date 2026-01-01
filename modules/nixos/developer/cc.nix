{ config, lib, pkgs, ... }:

  {
    options.developer.cc.enable = lib.mkEnableOption "Claude Code";

    config = lib.mkIf config.developer.cc.enable {
      environment.systemPackages = with pkgs; [
        claude-code
      ];
    };
  }
