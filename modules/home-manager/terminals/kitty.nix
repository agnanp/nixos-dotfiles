{ config, lib, pkgs, ... }:

  {
    options.kitty.enable = lib.mkEnableOption "kitty terminal emulator";

    config = lib.mkIf config.kitty.enable {
      programs.kitty = {
        enable = true;

        font = {
          name = "JetBrainsMono Nerd Font";
          size = 12;
        };

        settings = {
          # Appearance
          foreground = "#cdd6f4";
          background = "#1e1e2e";
          background_opacity = "0.92";
          background_blur = 32;
          dynamic_background_opacity = "yes";
          window_padding_width = 12;
          window_margin_width = 8;
          inactive_text_alpha = "0.6";

          # Cursor
          cursor_shape = "beam";
          cursor_blink_interval = "0.5";
          cursor_stop_blinking_after = "15.0";
          cursor = "#f5e0dc";

          # Scrollback (large for dev work)
          scrollback_lines = 10000;
          scrollback_pager = "less --chop-long-lines --RAW-CONTROL-CHARS +INPUT_LINE_NUMBER";

          # Mouse
          mouse_hide_wait = "3.0";
          url_style = "curly";

          # Performance
          repaint_delay = 10;
          input_delay = 1;
          sync_to_monitor = "yes";

          # Bell
          enable_audio_bell = "no";
          visual_bell_duration = "0.0";
          window_alert_on_bell = "yes";
          bell_on_tab = "yes";

          # Window layout
          remember_window_size = "yes";
          initial_window_width = "140c";
          initial_window_height = "40c";

          # Tab bar
          tab_bar_edge = "bottom";
          tab_bar_style = "powerline";
          tab_bar_min_tabs = 2;
          tab_powerline_style = "angled";
          tab_separator = " ┇";
          active_tab_foreground = "#1e1e2e";
          active_tab_background = "#89b4fa";
          inactive_tab_foreground = "#cdd6f4";
          inactive_tab_background = "#313244";

          # Shell integration
          shell_integration = "enabled";

          # Keyboard shortcuts
          kitty_mod = "ctrl+shift";

	  "map kitty_mod+k" = "clear_terminal reset active";
          "map kitty_mod+enter" = "new_window";
          "map kitty_mod+t" = "new_tab";
          "map kitty_mod+right" = "next_tab";
          "map kitty_mod+left" = "previous_tab";
          "map kitty_mod+1" = "goto_tab 1";
          "map kitty_mod+2" = "goto_tab 2";
          "map kitty_mod+3" = "goto_tab 3";
          "map kitty_mod+4" = "goto_tab 4";
          "map kitty_mod+5" = "goto_tab 5";
          "map kitty_mod+shift+v" = "launch --location=hsplit --cwd=current";
          "map kitty_mod+shift+s" = "launch --location=vsplit --cwd=current";
          "map kitty_mod+shift+left" = "resize_window narrower 2";
          "map kitty_mod+shift+right" = "resize_window wider 2";
          "map kitty_mod+shift+up" = "resize_window taller 2";
          "map kitty_mod+shift+down" = "resize_window shorter 2";
          "map kitty_mod+equal" = "change_font_size all +2.0";
          "map kitty_mod+minus" = "change_font_size all -2.0";
          "map kitty_mod+0" = "change_font_size all 0";
          "map kitty_mod+c" = "copy_to_clipboard";
          "map kitty_mod+v" = "paste_from_clipboard";

          # Color scheme (Catppuccin Mocha)
          color0 = "#45475a";
          color1 = "#f38ba8";
          color2 = "#a6e3a1";
          color3 = "#f9e2af";
          color4 = "#89b4fa";
          color5 = "#f5c2e7";
          color6 = "#94e2d5";
          color7 = "#bac2de";
          color8 = "#585b70";
          color9 = "#f38ba8";
          color10 = "#a6e3a1";
          color11 = "#f9e2af";
          color12 = "#89b4fa";
          color13 = "#f5c2e7";
          color14 = "#94e2d5";
          color15 = "#a6adc8";

          # Selection colors
          selection_foreground = "#1e1e2e";
          selection_background = "#f5e2af";
      };
    };
  };
}
