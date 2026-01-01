{ config, lib, pkgs, ... }:
  {
    options.developer.vscode.enable = lib.mkEnableOption "VSCode editor";
    config = lib.mkIf config.developer.zed.enable {
      environment.systemPackages = with pkgs; [
        vscode-fhs
      ];
    };
  }
