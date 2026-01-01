{ config, lib, pkgs, ... }:

{
  options.hardware.nvidia.enable = lib.mkEnableOption "NVIDIA graphics support";

  config = lib.mkIf config.hardware.nvidia.enable {
    hardware.graphics.enable = true;
    services.xserver.videoDrivers = [ "nvidia" ];
    hardware.nvidia.open = true;
  };
}

