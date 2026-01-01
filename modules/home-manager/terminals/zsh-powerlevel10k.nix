{ config, lib, pkgs, ... }:

  {
    options.zsh-powerlevel10k.enable = lib.mkEnableOption "zsh with powerlevel10k theme";

    config = lib.mkIf config.zsh-powerlevel10k.enable {
      programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        # Powerlevel10k theme
        initContent = ''
          # Source p10k
          source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
          
          # Look for p10k config in ~/.p10k.zsh, otherwise use default
          if [[ -f ~/.p10k.zsh ]]; then
            source ~/.p10k.zsh
          fi
        '';
      };

      home.packages = with pkgs; [
        zsh-powerlevel10k
      ];
    };
  }

