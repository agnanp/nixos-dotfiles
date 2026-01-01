{ config, lib, pkgs, ... }:
  {
    options.developer.vscode.enable = lib.mkEnableOption "VSCode editor";
    config = lib.mkIf config.developer.vscode.enable {
      environment.systemPackages = with pkgs; [
        vscode-fhs
      ];
    };
  }
