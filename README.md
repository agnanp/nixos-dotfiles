# NixOS Dotfiles

  My personal NixOS configuration using flakes.

  ## System Info
  - **Desktop**: KDE Plasma 6
  - **GPU**: NVIDIA (open drivers)
  - **Boot**: Lanzaboote (Secure Boot)
  - **WM/DE**: [optional]

  ## Structure

  ```
  .
  ├── flake.nix                 # Main flake entry point
  ├── hosts/
  │   └── default/
  │       ├── configuration.nix # System config
  │       ├── hardware-configuration.nix
  │       └── home.nix          # Home Manager config
  └── modules/
      ├── nixos/                # System modules
      │   ├── nvidia.nix
      │   ├── maintenance.nix
      │   └── developer/
      └── home-manager/         # User modules
          └── terminals/
  ```


  ## Usage
  ```bash
  # Rebuild system
  sudo nixos-rebuild switch --flake /etc/nixos

  # Update flake inputs
  nix flake update
