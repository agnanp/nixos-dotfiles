{ config, lib, pkgs, ... }:

{
    options.maintenance.enable = lib.mkEnableOption "automatic system maintenance (upgrades & garbage collection)";

    config = lib.mkIf config.maintenance.enable {
      # Automatic system upgrade
      system.autoUpgrade.enable = true;
      system.autoUpgrade.dates = "weekly";

      # Automatic garbage collection
      nix.gc.automatic = true;
      nix.gc.dates = "daily";
      nix.gc.options = "--delete-older-than 10d";
      nix.settings.auto-optimise-store = true;
    };
}

